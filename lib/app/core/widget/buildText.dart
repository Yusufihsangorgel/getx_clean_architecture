import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontsize;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final TextStyle? textStyle;

  const BuildText({
    Key? key,
    required this.text,
    this.color,
    this.fontWeight,
    this.fontsize,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.decoration,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: GoogleFonts.arimo(
          textStyle: textStyle ??
              TextStyle(
                fontSize: fontsize,
                decoration: decoration ?? TextDecoration.none,
                color: color,
                fontWeight: fontWeight,
              ),
          fontSize: fontsize),
    );
  }
}
