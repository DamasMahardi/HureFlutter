import 'dart:async';

import 'package:dio/dio.dart';
import 'package:uihure/service/SharedPreferences.dart';

import 'endpoint.dart';

class DioAppInterceptors extends Interceptor {
  
    SharedPrefs sharedPrefs = SharedPrefs();
  @override

  
  Future onRequest(RequestOptions options) async {
      var dio = new Dio();
      // sharedPrefs.readTenant();
      // sharedPrefs.readToken();
      dio.options.baseUrl = Endpoint.baseUrl;
    var token = sharedPrefs.readTenant;
    var tenant = sharedPrefs.readToken;
   // var tenantField = SharedPrefs.tenantField;

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    if (tenant != null) {
      options.headers['__tenant'] = tenant;
    }

    return super.onRequest(options);
  }

  
}
