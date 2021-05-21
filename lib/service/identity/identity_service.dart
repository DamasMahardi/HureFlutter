import 'package:dio/dio.dart';
import 'package:uihure/model/employee/EmployeeInformationDto.dart';
import 'package:uihure/model/wargakoo/SassTenantDto.dart';
import 'package:uihure/model/wargakoo/app_config.dart';
import 'package:uihure/model/wargakoo/rukun_warga_current.dart';
import 'package:uihure/model/wargakoo/tenant_info.dart';
import 'package:uihure/model/wargakoo/warga_current.dart';
import 'package:uihure/network/dio_common.dart';
import 'package:uihure/network/endpoint.dart';
import 'package:uihure/service/identity/my_profile_services.dart';
import 'package:uihure/network/dio_app_interceptors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../SharedPreferences.dart';
import 'dart:convert';

class IdentityService {
  var service = MyProfileService();
  bool isLoading = false;
  DioAppInterceptors interceptor = new DioAppInterceptors();
  SharedPrefs sharedPrefs = SharedPrefs();

  //fungsi dengan parameter email password, dan tenantid
  Future<String> connect(
      String email, String password, String tenantName) async {
    try {
      var tenant = await getTennatId(tenantName);
      var tenantId = tenant.tenantId;
      if (tenantId != null) {
        var token = await getToken(tenantId, email, password);

        if (token != null) {
          return token;
        } else {
          return null;
        }
      } else {
        return null;
      }
    } on DioError catch (e) {
      print(e);
     
    }
    return null;
  }

  Future<void> getAppConfig() async {
    var dio = DioCommon.instance;
    dio.options.baseUrl = Endpoint.baseUrl;

    var rwResp = await dio.get('/api/abp/application-configuration');
    if (rwResp.statusCode == 200) {
      var config = AppConfig.fromJson(rwResp.data);
      SharedPrefs.setAppConfig(config);
    }
  }

  Future<SaasTenantDto> getTennatId(String name) async {
    var dio = new Dio();
    dio.options.baseUrl = Endpoint.baseUrl;
    var response =
        await dio.get('/api/abp/multi-tenancy/tenants/by-name/$name');
    if (response.statusCode == 200) {
      var tenant = SaasTenantDto.fromJson(response.data);
      if (tenant.tenantId != null) {
        SharedPrefs.saveTenant(tenant.tenantId);
        

        return tenant;
      } else {
        return null;
      }
    }

    return null;
  }

  Future<EmployeeInformationDto> getEmployeeId() async {
    try {
      var dio = new Dio();
      var id = guidEmpty();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var tenentId= sharedPreferences.getString("tenantId");
   // print(json.decode(tenentId));
    var  token= sharedPreferences.getString('access_token');
   // print(json.decode(token));

      dio.options.headers["__tenant"] = tenentId;
     dio.options.headers["Authorization"] = "Bearer ${token}";

      dio.options.baseUrl = Endpoint.baseUrl;

      var response =
          await dio.get('/api/employee/current-employee-information/$id');
      if (response.statusCode == 200) {
        var employeeResult = EmployeeInformationDto.fromJson(response.data);
        if (employeeResult != null) {
          //SharedPrefs.saveTenant(tenant.tenantId);
          

          return employeeResult;
        } else {
          return null;
        }
      }
    } on DioError catch (e) {
      print(e);
    }

    return null;
  }

  Future<String> getToken(
      String tenantId, String username, String password) async {
    var formData = FormData.fromMap({
      "username": username,
      "password": password,
      "grant_type": 'password',
      "scope":'CORE offline_access',
      "client_id": 'CORE_App',
      //"client_id": 'saleskoo-mobile',
      "client_secret": '1q2w3e*'
    });
    try {
      var dio = new Dio();
      dio.options.headers["__tenant"] = tenantId;

      // dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
      // dio.options.headers["Access-Control-Allow-Origin"] = "*";
      dio.options.baseUrl = Endpoint.baseUrl;
      var response = await dio.post("/connect/token", data: formData);
      if (response.data['access_token'] != null) {
        isLoading = false;
        SharedPrefs.saveToken(response.data['access_token']);

        return response.data['access_token'];
      } else {
        isLoading = false;
        return null;
      }
    } on DioError catch (e) {
      print(e);
    }
    return null;
  }

  Future<void> logOut() async {
    var dio = new Dio();
    dio.options.baseUrl = Endpoint.baseUrl;
    await dio.get('/api/account/logout');
  }

  Future setRw() async {
    var rwResp = await DioCommon.instance
        .get('rukun-wargas/current-with-navigation-properties');

    if (rwResp.statusCode == 200) {
      var rw = RukunWargaCurrent.fromJson(rwResp.data);
      SharedPrefs.setCurrentRw(rw);
    }
  }

  Future setWarga() async {
    var wargaResp = await DioCommon.instance
        .get('wargas/current-with-navigation-properties');
    if (wargaResp.statusCode == 200) {
      var warga = WargaCurrent.fromJson(wargaResp.data);
      SharedPrefs.setCurrentWarga(warga);
    }
  }

  guidEmpty() {
    return '00000000-0000-0000-0000-000000000000';
  }
}
