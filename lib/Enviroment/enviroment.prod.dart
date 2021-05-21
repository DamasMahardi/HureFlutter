

import 'package:uihure/widget/flavor.dart';

class Endpoint {
  // ignore: missing_return
  static String get baseUrl {
    switch (flavor) {
      case FlavorEnum.DEV:
        // https://developer.android.com/studio/run/emulator-networking
        // return "http://10.0.2.2:44374";
        return "https://devops.idooh.co.id:8600";
        break;
      case FlavorEnum.STAG:
        return "https://devops.idooh.co.id:8600";
        break;
      case FlavorEnum.PROD:
        return "https://devops.idooh.co.id:8600";
        break;
    }
  }
}






// import 'package:dio/dio.dart';
// class ApiService{
//   Dio _dio;

//   final baseUrl = "https://devops.idooh.co.id:8600";

//   ApiService(){
//     _dio = Dio(BaseOptions(
//       baseUrl: baseUrl,
//     ));

//     initializeInterceptors();
//   }

//   Future<Response> getRequest(String endPoint) async{
//     Response response;

//     try {
//       response = await _dio.get(endPoint);
//     } on DioError catch (e) {
//       print(e.message);
//       throw Exception(e.message);
//     }

//     return response;

//   }

//     Future<Response> postRequest(String endPoint) async{
//     Response response;

//     try {
//       response = await _dio.get(endPoint);
//     } on DioError catch (e) {
//       print(e.message);
//       throw Exception(e.message);
//     }

//     return response;

//   }


//   initializeInterceptors(){
//     _dio.interceptors.add(InterceptorsWrapper(
//       onError: (error){
//         print(error.message);
//       },
//       onRequest: (request){
//         print("${request.method} ${request.path}");
//       },
//       onResponse: (response){
//         print(response.data);
//       }
//     ));
//   }
// }

// import 'package:http/http.dart' show Client;
// import 'package:uihure/Pages/items.dart';
// import 'package:uihure/model/tenant_response.dart';

// class ApiService {
//   final String baseUrl = "https://devops.idooh.co.id:8600";
//   Client client = Client();

//   Future<List<TenantResponse>> getTenantnew() async {
//     final response =
//         await client.get("$baseUrl/api/abp/multi-tenancy/tenants/by-name/");
//     if (response.statusCode == 200) {
//     } else {
//       return null;
//     }
//   }

//   Future<bool> getTenant(String  name) async {
//     final response = await client.get(
//       "$baseUrl/api/abp/multi-tenancy/tenants/by-name/$name",
//       headers: {"content-type": "application/json"},
//     );
//     if (response.statusCode == 201) {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   Future<bool> updateProfile(TenantResponse data) async {
//     final response = await client.put(
//       "$baseUrl/api/profile/${data.name}",
//       headers: {"content-type": "application/json"},
//     );
//     if (response.statusCode == 200) {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   Future<bool> deleteProfile(int id) async {
//     final response = await client.delete(
//       "$baseUrl/api/profile/$id",
//       headers: {"content-type": "application/json"},
//     );
//     if (response.statusCode == 200) {
//       return true;
//     } else {
//       return false;
//     }
//   }
// }
