import 'dart:convert';

import 'package:uihure/model/wargakoo/image_bloob.dart';
import 'package:uihure/model/wargakoo/my_profile.dart';
import 'package:uihure/service/SharedPreferences.dart';

const String key_my_profile = "key_my_profile";
const String key_my_image = "key_my_image";

class ProfileManager {
  static MyProfile get current {
    var str = SharedPrefs.current.getString(key_my_profile);
    return str != null ? MyProfile.fromJson(jsonDecode(str)) : null;
  }

  static setMyProfile(MyProfile myProfile) {
    var str = jsonEncode(myProfile);
    SharedPrefs.current.setString(key_my_profile, str);
  }

  static setMyImage(ImageBloob image) {
    var str = jsonEncode(image);
    SharedPrefs.current.setString(key_my_image, str);
  }

  static ImageBloob get myImage {
    var str = SharedPrefs.current.getString(key_my_image);
    return str != null ? ImageBloob.fromJson(jsonDecode(str)) : null;
  }

  static void reset() {
    SharedPrefs.current.remove(key_my_profile);
    SharedPrefs.current.remove(key_my_image);
  }
}
