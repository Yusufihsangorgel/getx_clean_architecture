import 'package:flutter/material.dart';
import 'package: myGetxArchitecture/app/core/values/app_colors.dart';
import 'package: myGetxArchitecture/app/core/values/app_values.dart';

   




class ConBorderRadiusum {
  
  static BoxDecoration buildContainerDecoration(
      Color? color, double corner, Color? borderColor , double? borderWidth, BuildContext context) {
          
    return BoxDecoration(
      color: color ?? AppColors.lightGreyColor,
      border: Border.all(color: borderColor ?? AppColors.lightGreyColor  , width: borderWidth ?? 2),
      boxShadow:  [
        BoxShadow(
          color:  Colors.grey.withOpacity(AppValues.opacity),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(corner),
        topRight: Radius.circular(corner),
        bottomLeft: Radius.circular(corner),
        bottomRight: Radius.circular(corner),
      ),
    );
  }
}
