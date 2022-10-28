import 'dart:async';

import 'package: myGetxArchitecture/app/data/enums/enums.dart';
import 'package: myGetxArchitecture/app/data/logger/logger.dart';
import 'package: myGetxArchitecture/app/core/Cache/cache_manager.dart';

import 'package: myGetxArchitecture/app/routes/app_pages.dart';

import 'package:get/get.dart';


class AutoRefresh {
  Timer timer = Timer(Duration(seconds: 0), () {
    null;
  });
 //Timer? timer;
  Future<Timer> autoRefreshProtocol(
      {required RefreshTimerType refreshTimerType}) async {
    return timer = Timer.periodic(const Duration(hours: 1), (Timer t) async {
      CustomLogger.logger.i("timer working !!");
      switch (refreshTimerType) {
        case RefreshTimerType.START:
          if (t.isActive) {
          //  SplashController splashController = Get.find();
          //  await splashController.refreshUser();
            break;
         } 
          else {
            CustomLogger.logger.i("Timer is already active");
            break;
          }
        case RefreshTimerType.STOP:
          if (t.isActive) {
            t.cancel();
            CacheManager.removeToken();
            //Get.toNamed(AppRoutes.Splash);
            break;
         } 
          else {
            CustomLogger.logger.i("Timer is already stopped");
            break;
          }
      }
    });
  }
}
