import 'package:flutter/material.dart';
import 'package: myGetxArchitecture/app/core/values/app_colors.dart';
import 'package: myGetxArchitecture/app/core/values/app_values.dart';
import 'package: myGetxArchitecture/app/core/widget/buildText.dart';
import 'package: myGetxArchitecture/app/core/widget/sarContainer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class IslemButton extends StatelessWidget {
  final String? islemText;
  final void Function()? onPressed;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final Color? backgroundColor;
  final double width;
  final double height;
  final double? sardirRakam;
  final bool? altAlta;

  const IslemButton({
    Key? key,
    this.islemText,
    this.onPressed,
    this.iconColor,
    this.iconSize,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.backgroundColor,
    required this.width,
    required this.height,
    this.icon,
    this.sardirRakam,
    this.altAlta = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SarContainer(
      sardirRakam: sardirRakam,
      sarmaColor: backgroundColor,
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        child: altAlta == true
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (islemText != null)
                    BuildText(
                      text: islemText ?? "Hata",
                      color: textColor ?? AppColors.silverAppBarOverlayColor,
                      fontsize: fontSize ?? AppValues.fontSize_20,
                      fontWeight: fontWeight ?? FontWeight.bold,
                    ),
                  icon != null
                      ? FaIcon(
                          icon,
                          color: iconColor,
                          size: iconSize ?? AppValues.fontSize_20,
                        )
                      : const SizedBox(
                          height: 0,
                          width: 0,
                        ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (islemText != null)
                    BuildText(
                        text: islemText ?? "Hata",
                        color: textColor ?? AppColors.silverAppBarOverlayColor,
                        fontsize: fontSize ?? AppValues.fontSize_20,
                        fontWeight: fontWeight ?? FontWeight.bold),
                  icon != null
                      ? FaIcon(
                          icon,
                          color: iconColor,
                          size: iconSize ?? AppValues.fontSize_20,
                        )
                      : const SizedBox(
                          height: 0,
                          width: 0,
                        ),
                ],
              ),
      ),
    );
  }
}
