import 'package:flutter/material.dart';
import 'package: myGetxArchitecture/app/core/values/app_colors.dart';
import 'package: myGetxArchitecture/app/core/values/app_values.dart';

import 'package:google_fonts/google_fonts.dart';

class BuildTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  void Function(String) changed;
  final String? error;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final bool? obscureBool;
  final String text;
  String? Function(String?)? validator;
  final double? fontsize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextInputType? keyboardType;

  BuildTextFormField({
    Key? key,
    required this.text,
    this.obscureBool,
    required this.changed,
    this.error,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.fontsize,
    this.fontWeight,
    this.textColor,
    this.keyboardType,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: TextFormField(
        validator: validator,
        onChanged: changed,
        controller: controller,
        keyboardType: keyboardType ?? TextInputType.number,
        obscureText: obscureBool ?? false,
        style: TextStyle(
            color: textColor ?? AppColors.silverAppBarOverlayColor,
            fontSize: fontsize ?? AppValues.fontSize_16,
            fontWeight: fontWeight ?? FontWeight.bold),
        decoration: buildFieldDecoration(context),
      ),
    );
  }

  InputDecoration buildFieldDecoration(BuildContext context) {
    return InputDecoration(
      enabledBorder: buildOutlineInputBorder(Colors.transparent),
      errorBorder: buildOutlineInputBorder(Colors.red),
      disabledBorder: buildOutlineInputBorder(Colors.transparent),
      fillColor: const Color.fromARGB(50, 163, 160, 172),
      filled: true,
      border: buildOutlineInputBorder(AppColors.silverAppBarOverlayColor),
      focusedBorder:
          buildOutlineInputBorder(AppColors.silverAppBarOverlayColor),
      hintText: text,
      errorText: error,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      hintStyle: GoogleFonts.arimo(
          textStyle: TextStyle(
            fontSize: fontsize,
            color: AppColors.silverAppBarOverlayColor,
            
            fontWeight: fontWeight,
          ),
          fontSize: fontsize),
    );
  }

  OutlineInputBorder buildOutlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 0.0),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(10.0),
        bottomLeft: Radius.circular(10.0),
        bottomRight: Radius.circular(10.0),
      ),
    );
  }
}
