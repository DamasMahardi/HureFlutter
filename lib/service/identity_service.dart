// import 'package:dio/dio.dart';
// import 'package:uihure/Enviroment/enviroment.prod.dart';
// import 'package:uihure/model/tenant/tenant_response.dart';
// import 'package:flutter/material.dart';
// import 'package:uihure/network/Apiservice.dart';
// import 'dart:developer' as developer;

// import 'SharedPreferences.dart';

// class IdentityService {
//   HttpService http = HttpService();
//    Dio _dio = Dio();
//  // Shareprefences shareprefences = Shareprefences();
//   bool isLoading = false;
//   TenantResponse tenantResponse = TenantResponse();
//   Response response = Response();
//   Future<String> getTenant(String name) async {
//     try {
//       Response response = Response();
//       response =
//           await http.getRequest("/api/abp/multi-tenancy/tenants/by-name/$name");

//       if (response.statusCode == 200) {
//         var tenant = TenantResponse.fromJson(response.data);
//         if (tenant.tenantId != null) {
//           shareprefences.saveTenantPref(tenant.tenantId);
//           return tenant.tenantId;
//         } else {
//           return null;
//         }
//       } else {
//         return null;
//       }
//     } on Exception catch (e) {
//       return null;
//     }
//   }

//   //get token dengan parameter tenant, email, password
//   Future<String> getToken(
//       String tenantId, String email, String password) async {
//     //option header __tenant di simpan di variable reqOpts
//     var reqOpts = new Dio().options.headers['__tenant'] = '$tenantId';
//     print(tenantId);
//     //From data input di simpan di variable formdata
//     var formData = FormData.fromMap({
//       "username": email,
//       "password": password,
//       "grant_type": 'password',
//       "scope": 'CORE offline_access',
//       "client_id": 'CORE_App',
//       "client_secret": '1q2w3e*'
//     });
//     print(formData);

//     try {
//       //loading true
//       isLoading = true;
//       // postRequestToken dengan url coonect/token ,form data, dan header ambil dari variable reqOpts di simpan di response
//       response = await http.postRequestToken(
//           "/connect/token", formData,reqOpts);

//       //token di simpan dengan id 'access_token'

//       if (response.data['access_token'] != null) {
//         isLoading = false;
//         shareprefences.saveTokenjPref(response.data['access_token']);
//       } else {
//         //status  problem tidak connect
//         isLoading = false;
//         return null;
//       }

//       //menerima informasi error
//     } on Exception catch (e) {
//       //loading false
//       isLoading = false;
//       //cetak error
//       return null;
//     }
//     return 'Success';
//   }

//   //fungsi dengan parameter email password, dan tenantid
//   Future<String> connect(
//       String email, String password, String tenantName) async {
//     try {
//       var tenantId = await getTenant(tenantName);
//       if (tenantId != null) {
//         var token = await getToken(tenantId, email, password);

//         if (token != null) {
//           return token;
//         } else {
//           return null;
//         }
//       }else{
//          return null;

//       }
     
//     } on DioError catch (e) {
//       return null;
//     }
//   }
// }
