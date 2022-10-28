
import 'package: myGetxArchitecture/app/data/enums/enums.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:logger/logger.dart';



class CacheManager {
  static Future<bool> saveToken(String token, String refreshToken) async {
    final box = GetStorage();
    await box.write(CacheManagerKey.TOKEN.toString(), token);
    await box.write(CacheManagerKey.REFRESHTOKEN.toString(), refreshToken);
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    Logger().i(decodedToken);
    String tokenId = decodedToken["userId"];
    String type = tokenId.toString().split('')[0];
    int userId = int.tryParse(tokenId.substring(1)) ?? 0;
    List<dynamic> claim = decodedToken["claim"];
    Logger().i("claim : $claim");
    Logger().i("type : $type");
    Logger().i("userId : $userId");
    await box.write(CacheManagerKey.CLAIM.toString(), claim);
    await box.write(CacheManagerKey.USERTYPE.toString(), type);
    await box.write(CacheManagerKey.USERID.toString(), userId);

    return true;
  }

  static int? getUserId() {
    final box = GetStorage();

    return box.read(CacheManagerKey.USERID.toString());
  }

  static String? getClaim() {
    final box = GetStorage();

    return box.read(CacheManagerKey.CLAIM.toString());
  }

  static String? getUserType() {
    final box = GetStorage();

    return box.read(CacheManagerKey.USERTYPE.toString());
  }

  static String? getToken() {
    final box = GetStorage();

    return box.read(CacheManagerKey.TOKEN.toString());
  }

  static String? getRefresh() {
    final box = GetStorage();

    return box.read(CacheManagerKey.REFRESHTOKEN.toString());
  }

  static Future<void> removeToken() async {
    final box = GetStorage();
    await box.remove(CacheManagerKey.REFRESHTOKEN.toString());
    await box.remove(CacheManagerKey.USERID.toString());
    await box.remove(CacheManagerKey.TOKEN.toString());
    await box.remove(CacheManagerKey.CLAIM.toString());
    await box.remove(CacheManagerKey.USERTYPE.toString());
  }

  /// set theme current type as light theme
  static void setThemeIsLight(bool lightTheme) {
    final box = GetStorage();
    box.write(CacheManagerKey.LIGHTHIME.toString(), lightTheme);
  }

  static void setBorderColor(bool lightTheme) {
    final box = GetStorage();
    box.write(CacheManagerKey.BORDERCOLOR.toString(), lightTheme);
  }

  static bool getBorderColor() {
    final box = GetStorage();

    return box.read(
          CacheManagerKey.BORDERCOLOR.toString(),
        ) ??
        true;
  }

  /// get if the current theme type is light
  static bool getThemeIsLight() {
    final box = GetStorage();

    return box.read(
          CacheManagerKey.LIGHTHIME.toString(),
        ) ??
        true;
  }

  /// save current locale
  static void setCurrentLanguage(String languageCode) {
    final box = GetStorage();
    box.write(CacheManagerKey.CURRENTLANGUAGE.toString(), languageCode);
  }

  /// get current locale
  static String? getCurrentLocal() {
    final box = GetStorage();

    return box.read(CacheManagerKey.CURRENTLANGUAGE.toString());
  }

  /// save generated fcm token
  static void setFcmToken(String token) {
    final box = GetStorage();
    box.write(CacheManagerKey.FCMTOKEN.toString(), token);
  }

  /// get generated fcm token
  static String? getFcmToken() {
    final box = GetStorage();
    box.read(
      CacheManagerKey.FCMTOKEN.toString(),
    );
  }
}
