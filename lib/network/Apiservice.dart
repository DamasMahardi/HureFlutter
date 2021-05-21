

// import 'package:dio/dio.dart';
// import 'package:uihure/Auth/Tenant/UI/tenant.dart';
// import 'package:uihure/service/SharedPreferences.dart';

// class HttpService{
//   Dio _dio = Dio();
//   Shareprefences shareprefences= Shareprefences();

//   final baseUrl = "https://devops.idooh.co.id:8600";
//   String headerTenant="";

//   HttpService(){
//     _dio = Dio(BaseOptions(
//       baseUrl: baseUrl,
//       //headers: shareprefences.getTenantPref.toString;
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

  
//   Future<Response> postRequestToken(String endPoint,FormData formData, String headerTenant) async{
//     Response response;

//     try {
//       response = await _dio.post(endPoint, data: formData);
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
