import 'package:flutter/material.dart';

import '/app/core/values/app_colors.dart';
import '/app/core/values/app_values.dart';

class ElevatedContainer extends StatelessWidget {
  final Widget child;
  final Color bgColor;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final double? height;
  final double width;

  const ElevatedContainer({
    Key? key,
    required this.child,
    this.height,
    this.width = double.infinity,
    this.bgColor = AppColors.pageBackground,
    this.padding,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? AppValues.height_60,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius:
            BorderRadius.circular(borderRadius ?? AppValues.smallRadius),
        boxShadow: [
          BoxShadow(
            color: AppColors.elevatedContainerColorOpacity,
            spreadRadius: 3,
            blurRadius: 8,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: child,
    );
  }
}
