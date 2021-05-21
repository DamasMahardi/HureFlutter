import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:uihure/network/dio_app_interceptors.dart';
import 'package:uihure/network/endpoint.dart';

class DioCommon {
  static const int timeOutConnect = 20000;
  static const int timeOutReceive = 12000;

  static CacheConfig get cacheConfig {
    var config = CacheConfig(
      defaultRequestMethod: 'GET',
      baseUrl: Endpoint.baseUrl,
      defaultMaxAge: const Duration(minutes: 10),
      defaultMaxStale: const Duration(minutes: 15),
      // skipDiskCache: true,
      // diskStore: HiveStore(),
    );

    return config;
  }

  static DioCacheManager get cacheManager {
    return DioCacheManager(DioCommon.cacheConfig);
  }

  static Options get cacheOptions {
    return buildCacheOptions(Duration(hours: 1), forceRefresh: false);
  }

  static Dio get instance {
    var options = BaseOptions(
        //baseUrl: '${Endpoint.baseUrl}',
        connectTimeout: timeOutConnect,
        receiveTimeout: timeOutReceive);

    var dio = Dio(options);
    dio.interceptors.add(DioAppInterceptors());
    dio.interceptors.add(DioCommon.cacheManager.interceptor);

    return dio;
  }
}
