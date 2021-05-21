
import 'package:uihure/model/wargakoo/image_bloob.dart';
import 'package:uihure/model/wargakoo/my_profile.dart';
import 'package:uihure/network/dio_common.dart';
import 'package:uihure/network/endpoint.dart';
import 'package:uihure/network/profile_manager.dart';
import '../SharedPreferences.dart';

class MyProfileService {
  Future<MyProfile> getMyProfile(String data) async {
    var dio = DioCommon.instance;
    dio.options.baseUrl = Endpoint.baseUrl;

    var response = await dio.get('/api/identity/my-profile');
    if (response.statusCode == 200) {
      var data = MyProfile.fromJson(response.data);
      ProfileManager.setMyProfile(data);

      return data;
    }

    return null;
  }

  Future<void> setCurrentUserImage() async {
    var warga = SharedPrefs.getCurrentWarga;
    var base64 = await getUserImage(warga.warga.appUserId);

    ProfileManager.setMyImage(base64);
  }

  Future<ImageBloob> getUserImage(String userId) async {
    var url = '/api/account/profile-picture/$userId';
    var dio = DioCommon.instance;
    dio.options.baseUrl = Endpoint.baseUrl;

    var response = await dio.get(url, options: DioCommon.cacheOptions);
    if (response.statusCode == 200) {
      return ImageBloob.fromJson(response.data);
    }

    return null;
  }
}
