import 'package:flutter/material.dart';
import 'package: myGetxArchitecture/app/core/values/app_colors.dart';
import 'package: myGetxArchitecture/app/core/values/app_values.dart';
import 'package: myGetxArchitecture/app/core/widget/buildText.dart';
import 'package: myGetxArchitecture/app/core/widget/sarContainer.dart';

class SecondaryTitleWidget extends StatelessWidget {
  final String title;
  const SecondaryTitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SarContainer(
      sarmaColor: AppColors.colorPrimary,
      height: AppValues.height_50,
      width: AppValues.width_400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BuildText(
              text: title,
              fontsize: AppValues.fontSize_16,
              fontWeight: FontWeight.w900,
              color: AppColors.colorWhite),
        ],
      ),
    );
  }
}
