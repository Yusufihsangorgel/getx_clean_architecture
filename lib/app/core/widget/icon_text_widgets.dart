import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package: myGetxArchitecture/app/core/values/text_styles.dart';

import '/app/core/values/app_values.dart';
import '/app/core/widget/asset_image_view.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    Key? key,
    this.fileName,
    this.icon,
    this.value,
    this.height,
    this.width,
    this.size,
    this.color,
    this.fontSize,
    this.textStyle,
    this.flag,
  }) : super(key: key);
  final FlagsCode? flag;
  final String? fileName;
  final IconData? icon;
  final String? value;
  final double? height;
  final double? width;
  final double? size;
  final Color? color;
  final double? fontSize;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    if (fileName != null) {
      return _getImage(fileName!);
    } else if (icon != null) {
      return _getIcon(icon!);
    } else if (flag != null) {
      return _getFlag(flag!);
    } else {
      return _getIcon(Icons.image_not_supported_outlined);
    }
  }

  Widget _getFlag(FlagsCode flag) {
    return Row(
      children: [
        Flag.fromCode(flag, height: AppValues.height_30, width: AppValues.width_30),
        SizedBox(width: AppValues.margin_10),
        if (value != null)
          Text(
            value!,
            style: textStyle ?? TextStyle(color: color, fontSize: fontSize),
          ),
      ],
    );
  }

  Widget _getIcon(IconData iconData) {
    return Row(
      children: [
        Icon(icon, size: size, color: color),
        SizedBox(width: AppValues.margin_10),
        if (value != null)
          Text(
            value!,
            style: textStyle ?? TextStyle(color: color, fontSize: fontSize),
          ),
      ],
    );
  }

  Widget _getImage(String fileName) {
    return Expanded(
      child: Row(
        children: [
          AssetImageView(
            fileName: fileName,
            height: height,
            width: width,
            color: color,
          ),
          SizedBox(width: AppValues.margin_2),
          if (value != null)
            Text(value!,
                style:
                    textStyle ?? TextStyle(color: color, fontSize: fontSize)),
        ],
      ),
    );
  }
}
