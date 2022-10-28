import 'package:flutter/material.dart';
import 'package: myGetxArchitecture/app/core/values/app_values.dart';
import 'package:get/get.dart';


class MySnackBar {
  final String title;
  final String text;
  final Color color;
  final Color textColor;
  final SnackPosition position;
  final int seconds;
  final IconData? icon;
  final Color? iconColor;
  MySnackBar(
      {required this.title,
      required this.text,
      required this.color,
      required this.textColor,
      required this.position,
      required this.seconds,
      this.icon,
      this.iconColor});

  static SnackbarController buildSnackbar(
      {required title,
      required text,
      required color,
      required textColor,
      required position,
      required seconds,
      icon,
    iconColor}) {
    return Get.snackbar(title, text,
        snackPosition: position,
        backgroundColor: color,
        colorText: textColor,
        borderRadius: AppValues.height_10,
        margin: const EdgeInsets.all(10),
        borderColor: color,
        borderWidth: 1,
        duration: Duration(seconds: seconds),
        icon: Icon(
          icon ?? Icons.error,
          color: color,
        ));
  }
}


class CustomSnackBar {
  static showCustomSnackBar({required String title, required String message,Duration? duration})
  {
    Get.snackbar(
      title,
      message,
      duration: duration ?? const Duration(seconds: 1),
      margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
      colorText: Colors.white,
      backgroundColor: Colors.green,
      icon: const Icon(Icons.check_circle, color: Colors.white,),
    );
  }


  static showCustomErrorSnackBar({required String title, required String message,Color? color,Duration? duration})
  {
    Get.snackbar(
      title,
      message,
      duration: duration ?? const Duration(seconds: 1),
      margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
      colorText: Colors.white,
      backgroundColor: color ?? Colors.redAccent,
      icon: const Icon(Icons.error, color: Colors.white,),
    );
  }



  static showCustomToast({String? title, required String message,Color? color,Duration? duration}){
    Get.rawSnackbar(
      title: title,
      duration: duration ?? const Duration(seconds: 1),
      snackStyle: SnackStyle.GROUNDED,
      backgroundColor: color ?? Colors.green,
      onTap: (snack){
        Get.closeAllSnackbars();
      },
      //overlayBlur: 0.8,
      message: message,
    );
  }


  static showCustomErrorToast({String? title, required String message,Color? color,Duration? duration}){
    Get.rawSnackbar(
      title: title,
      duration: duration ?? const Duration(seconds: 1),
      snackStyle: SnackStyle.GROUNDED,
      backgroundColor: color ?? Colors.redAccent,
      onTap: (snack){
        Get.closeAllSnackbars();
      },
      //overlayBlur: 0.8,
      message: message,
    );
  }


}

