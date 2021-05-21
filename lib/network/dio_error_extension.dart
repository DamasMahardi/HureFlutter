import 'package:dio/dio.dart';
import 'package:uihure/flavor.dart';

extension AppDioError on DioError {
  String errorDesc() {
    var errMsg = 'Oops, Something Went Wrong';
    if (this.response.data != null) {
      if (this.response.data['error'] != null) {
        if (this.response.data['error']['message'] != null) {
          errMsg = this.response.data['error']['message'];
          if (flavor == FlavorEnum.DEV) {
            errMsg += '\n\n${this.request.baseUrl}${this.request.path}';
          }
        }
      }
    } else {
      if (this.response.statusMessage != null) {
        errMsg = this.response.statusMessage;
      }
    }

    return errMsg;
  }
}
