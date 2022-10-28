import 'package:flutter/material.dart';
import 'package: myGetxArchitecture/app/core/utils/ConBorderRadius.dart';
import 'package: myGetxArchitecture/app/core/values/app_values.dart';

class SarContainer extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  final Color? sarmaColor;
  final double? sardirRakam;
  final Color? borderColor;
  final double? borderWidth;
  const SarContainer(
      {Key? key,
      required this.child,
      this.height,
      this.width,
      this.sarmaColor,
      this.sardirRakam,
      this.borderColor,
      this.borderWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        width: width,
        decoration: ConBorderRadiusum.buildContainerDecoration(
            sarmaColor,
            sardirRakam ?? AppValues.height_10,
            borderColor,
            borderWidth,
            context),
        child: child,
      ),
    );
  }
}
