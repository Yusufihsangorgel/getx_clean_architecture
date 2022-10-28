
import 'package: myGetxArchitecture/app/core/Cache/cache_manager.dart';
import 'package: myGetxArchitecture/app/data/enums/enums.dart';
import 'package: myGetxArchitecture/app/data/logger/logger.dart';


import 'package:jwt_decoder/jwt_decoder.dart';

class JwtExpiredCheck   {
  static bool jwtExpiredControl() {
    var token = CacheManager.getToken();
    JwtRefreshType tokenCurrentType;
    if (token != null) {
      bool isTokenExpired = JwtDecoder.isExpired(token);
      tokenCurrentType =
          isTokenExpired ? JwtRefreshType.EXPIRED : JwtRefreshType.NOT_EXPIRED;
    } else {
      tokenCurrentType = JwtRefreshType.NOT_FOUND;
    }
    
    switch (tokenCurrentType) {
      case JwtRefreshType.EXPIRED:
        CustomLogger.logger.i("token EXPIRED");
        return false;

      case JwtRefreshType.NOT_EXPIRED:
        CustomLogger.logger.i("token NOT EXPIRED");
        return true;

      case JwtRefreshType.NOT_FOUND:
        CustomLogger.logger.i("token not found");
        return false;
    }
    
  }
}
