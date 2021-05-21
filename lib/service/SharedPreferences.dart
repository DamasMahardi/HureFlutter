import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:uihure/model/wargakoo/app_config.dart';
import 'package:uihure/model/wargakoo/rukun_warga_current.dart';
import 'package:uihure/model/wargakoo/warga_current.dart';

const String keyUseIntro = "key_use_intro";
const String keyBaseUrl = "key_base_url";
const String keyCurrentWarga = "key_current_warga";
const String keyToken = "access_token";
const String keyRefreshToken = "key_refresh_token";
const String keyExpire = "key_expire";
const String keyTenant = "tenantId";
const String keyTenantField = "key_tenant_field";
const String keyUser = "key_user";
const String keyRw = "key_rw";
const String keyConfig = "key_config";
const String keyShowAnnouncement = "key_show_announcement";

class SharedPrefs {
  static SharedPreferences _sharedPrefs;
  static SharedPreferences sharedPreferences;
  Future<void> init() async {
    if (_sharedPrefs == null) {
      _sharedPrefs = await SharedPreferences.getInstance();
    }
  }

  static SharedPreferences get current => _sharedPrefs;
  static bool get useIntro => _sharedPrefs.getBool(keyUseIntro) ?? true;
  static bool get showAnnouncement =>
      _sharedPrefs.getBool(keyShowAnnouncement) ?? true;

  static void setShowAnnouncement(bool value) {
    _sharedPrefs.setBool(keyShowAnnouncement, value);
  }

  static void setIntro(value) => _sharedPrefs.setBool(keyUseIntro, value);

  static String get refreshToken => _sharedPrefs.getString(keyRefreshToken);
  static void setRefreshToken(String token) =>
      _sharedPrefs.setString(keyRefreshToken, token);

  static String get token => _sharedPrefs.getString(keyToken);
  static String get tenant => _sharedPrefs.getString(keyTenant);
  static String get tenantField => _sharedPrefs.getString(keyTenantField);

  static void setToken(String token) => _sharedPrefs.setString(keyToken, token);
  static void setTenant(String tenantId) =>
      _sharedPrefs.setString(keyTenant, tenantId);
  static void setTenantField(String tenantId) =>
      _sharedPrefs.setString(keyTenantField, tenantId);
  static void setBaseUrl(value) => _sharedPrefs.setString(keyBaseUrl, value);

  static void saveTenant(String controller) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("tenantId", controller);
  }

  static void saveToken(String token) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("access_token", token);
  }

  

  Future readTenant() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String tenentId= sharedPreferences.getString("tenantId");
    print(json.decode(tenentId));
    //return sharedPreferences.getString("tenantId") ?? 'NO';
  }

  Future<String> readToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString("access_token");
  }

  Future<bool> removeTenant(String controller) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.remove("tenantId");
    
  } 
  


  Future<bool> removeToken(String token) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.remove("access_token");
  }

  static void setCurrentRw(RukunWargaCurrent rw) {
    var str = jsonEncode(rw);
    _sharedPrefs.setString(keyRw, str);
  }

  static RukunWargaCurrent get getCurrentRw {
    var str = _sharedPrefs.getString(keyRw);
    return str != null ? RukunWargaCurrent.fromJson(jsonDecode(str)) : null;
  }

  static void setCurrentWarga(WargaCurrent warga) {
    var strWarga = jsonEncode(warga);
    _sharedPrefs.setString(keyCurrentWarga, strWarga);
  }

  static WargaCurrent get getCurrentWarga {
    var strWarga = _sharedPrefs.getString(keyCurrentWarga);
    return strWarga != null
        ? WargaCurrent.fromJson(jsonDecode(strWarga))
        : null;
  }

  static String get expire => _sharedPrefs.getString(keyExpire);
  static void setExpire(value) => _sharedPrefs.setString(keyExpire, value);

  static bool isInRole(String roleName) {
    var hasRole = isInRoles([roleName]);
    return hasRole;
  }

  static bool isInRoles(List<String> roleNames) {
    var hasRole = false;
    if (appConfig == null) {
      return hasRole;
    }

    for (var i = 0; i < roleNames.length; i++) {
      if (appConfig.currentUser.roles
              .where((role) => role == roleNames[i])
              .length >
          0) {
        hasRole = true;
        break;
      }
    }

    return hasRole;
  }

  static void setAppConfig(AppConfig config) {
    var str = jsonEncode(config);
    _sharedPrefs.setString(keyConfig, str);
  }

  static AppConfig get appConfig {
    var str = _sharedPrefs.getString(keyConfig);
    return str != null ? AppConfig.fromJson(jsonDecode(str)) : null;
  }

  static void reset() {
    // _sharedPrefs.remove(keyToken);
    //_sharedPrefs.remove(keyRefreshToken);
    //  _sharedPrefs.remove(keyTenant);
    // _sharedPrefs.remove(keyExpire);
    // _sharedPrefs.remove(keyConfig);
    // _sharedPrefs.remove(keyCurrentWarga);
    // _sharedPrefs.remove(keyRw);
    // sharedPreferences.remove("tenantId");
    // sharedPreferences.remove("access_token");
  }
}
