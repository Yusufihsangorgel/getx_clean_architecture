import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/app/core/values/app_colors.dart';

TextStyle centerTextStyle = TextStyle(
  fontSize: 28.h,
  fontWeight: FontWeight.bold,
  color: AppColors.centerTextColor,
);

TextStyle errorTextStyle = TextStyle(
  fontSize: 12.h,
  fontWeight: FontWeight.w400,
  color: AppColors.errorColor,
);

TextStyle greyDarkTextStyle = TextStyle(
    fontSize: 14.h,
    fontWeight: FontWeight.w400,
    color: AppColors.textColorGreyDark,
    height: 1.45.h);

TextStyle primaryColorSubtitleStyle = TextStyle(
    fontSize: 14.h,
    fontWeight: FontWeight.w400,
    color: AppColors.colorPrimary,
    height: 1.45.h);

TextStyle whiteText10 = TextStyle(
    fontSize: 10.h,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
    height: 1.45.h);

TextStyle whiteText12 = TextStyle(
    fontSize: 12.h,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
    height: 1.45.h);

TextStyle whiteText14 = TextStyle(
    fontSize: 14.h,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
    height: 1.45.h);

TextStyle whiteText16 = TextStyle(
  fontSize: 16.h,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

TextStyle whiteText18 = TextStyle(
  fontSize: 18.h,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

TextStyle whiteText32 = TextStyle(
  fontSize: 32.h,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

TextStyle blackText12 = TextStyle(
  fontSize: 12.h,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

TextStyle blackText14 = TextStyle(
  fontSize: 14.h,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

TextStyle blackText16 = TextStyle(
  fontSize: 16.h,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

TextStyle blackText18 = TextStyle(
  fontSize: 18.h,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

TextStyle blackText20 = TextStyle(
  fontSize: 20.h,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

TextStyle blackText24 = TextStyle(
  fontSize: 24.h,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

TextStyle blackText32 = TextStyle(
  fontSize: 32.h,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

TextStyle blackText40 = TextStyle(
  fontSize: 40.h,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

TextStyle blackText48 = TextStyle(
  fontSize: 48.h,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

TextStyle blackText56 = TextStyle(
  fontSize: 56.h,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

TextStyle cyanText16 = TextStyle(
  fontSize: 16.h,
  fontWeight: FontWeight.w400,
  color: AppColors.textColorCyan,
);

TextStyle cyanText32 = TextStyle(
  fontSize: 32.h,
  fontWeight: FontWeight.w400,
  color: AppColors.textColorCyan,
);

TextStyle dialogSubtitle = TextStyle(
  fontSize: 16.h,
  fontWeight: FontWeight.w400,
  color: AppColors.textColorPrimary,
);

TextStyle labelStyle = TextStyle(
  fontSize: 18.h,
  fontWeight: FontWeight.w400,
  height: 1.8.h,
);

TextStyle blackAndBig = TextStyle(
    fontSize: 30.h,
    fontWeight: FontWeight.w400,
    color: AppColors.blackColor,
    height: 1.45.h);

TextStyle blackAndSmall = TextStyle(
    fontSize: 14.h,
    fontWeight: FontWeight.w400,
    color: AppColors.blackColor,
    height: 1.45.h);

final labelStylePrimaryTextColor = labelStyle.copyWith(
  color: AppColors.textColorPrimary,
  height: 1.h,
);

final labelStyleAppPrimaryColor = labelStyle.copyWith(
  color: AppColors.colorPrimary,
  height: 1.h,
);

final labelStyleGrey =
    labelStyle.copyWith(color: Color(0xFF323232).withOpacity(0.5));

final labelCyanStyle = labelStyle.copyWith(color: AppColors.textColorCyan);

TextStyle labelStyleWhite = TextStyle(
  fontSize: 18.h,
  fontWeight: FontWeight.w400,
  height: 1.8.h,
  color: Colors.white,
);

TextStyle appBarSubtitleStyle = TextStyle(
    fontSize: 16.h,
    fontWeight: FontWeight.w500,
    height: 1.25.h,
    color: AppColors.colorWhite);

TextStyle cardTitleStyle = TextStyle(
    fontSize: 17.h,
    fontWeight: FontWeight.w500,
    height: 1.2.h,
    color: AppColors.textColorPrimary);

TextStyle cardTitleCyanStyle = TextStyle(
  fontSize: 20.h,
  fontWeight: FontWeight.w500,
  color: AppColors.colorPrimary,
);

TextStyle cardSubtitleStyle = TextStyle(
    fontSize: 14.h,
    fontWeight: FontWeight.w500,
    height: 1.2.h,
    color: AppColors.textColorGreyLight);

TextStyle titleStyle = TextStyle(
  fontSize: 18.h,
  fontWeight: FontWeight.w500,
  height: 1.34.h,
);

TextStyle settingsItemStyle = TextStyle(
  fontSize: 16.h,
  fontWeight: FontWeight.w400,
);

final cardTagStyle = titleStyle.copyWith(color: AppColors.textColorGreyDark);

TextStyle titleStyleWhite = TextStyle(
    fontSize: 18.h, fontWeight: FontWeight.w500, color: AppColors.colorWhite);

TextStyle inputFieldLabelStyle = TextStyle(
  fontSize: 18.h,
  fontWeight: FontWeight.w500,
  height: 1.34.h,
  color: AppColors.textColorPrimary,
);

TextStyle cardSmallTagStyle = TextStyle(
    fontSize: 14.h,
    fontWeight: FontWeight.w500,
    height: 1.2.h,
    color: AppColors.textColorGreyDark);

TextStyle pageTitleStyle = TextStyle(
    fontSize: 18.h,
    fontWeight: FontWeight.w600,
    height: 1.15.h,
    color: AppColors.appBarTextColor);

final pageTitleBlackStyle =
    pageTitleStyle.copyWith(color: AppColors.textColorPrimary);

TextStyle appBarActionTextStyle = TextStyle(
  fontSize: 16.h,
  fontWeight: FontWeight.w600,
  color: AppColors.colorPrimary,
);

TextStyle pageTitleWhiteStyle = TextStyle(
    fontSize: 28.h,
    fontWeight: FontWeight.w600,
    height: 1.15.h,
    color: AppColors.colorWhite);

TextStyle extraBigTitleStyle = TextStyle(
  fontSize: 40.h,
  fontWeight: FontWeight.w600,
  height: 1.12.h,
);

final extraBigTitleCyanStyle =
    extraBigTitleStyle.copyWith(color: AppColors.textColorCyan);

TextStyle bigTitleStyle = TextStyle(
  fontSize: 28.h,
  fontWeight: FontWeight.w700,
  height: 1.15.h,
);

TextStyle mediumTitleStyle = TextStyle(
  fontSize: 24.h,
  fontWeight: FontWeight.w500,
  height: 1.15.h,
);

TextStyle descriptionTextStyle = TextStyle(
  fontSize: 16.h,
);

final bigTitleCyanStyle =
    bigTitleStyle.copyWith(color: AppColors.textColorCyan);

TextStyle bigTitleWhiteStyle = TextStyle(
  fontSize: 28.h,
  fontWeight: FontWeight.w700,
  height: 1.15.h,
  color: Colors.white,
);

TextStyle boldTitleStyle = TextStyle(
  fontSize: 18.h,
  fontWeight: FontWeight.w700,
  height: 1.34.h,
);
final boldTitleWhiteStyle =
    boldTitleStyle.copyWith(color: AppColors.textColorWhite);

final boldTitleCyanStyle =
    boldTitleStyle.copyWith(color: AppColors.textColorCyan);

final boldTitleSecondaryColorStyle =
    boldTitleStyle.copyWith(color: AppColors.textColorSecondary);

final boldTitlePrimaryColorStyle =
    boldTitleStyle.copyWith(color: AppColors.colorPrimary);
