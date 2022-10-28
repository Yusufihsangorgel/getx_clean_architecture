import 'package:flutter/material.dart';
import 'package: myGetxArchitecture/app/core/values/app_colors.dart';
import 'package: myGetxArchitecture/app/core/widget/buildImage.dart';
import 'package: myGetxArchitecture/app/core/widget/buildText.dart';
import 'package:get/get.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '/app/core/values/app_values.dart';

class Loading extends StatelessWidget {
  Loading({Key? key}) : super(key: key);
  //late AppLocalizations appLocalization;

  @override
  Widget build(BuildContext context) {
   // appLocalization = AppLocalizations.of(context);

    return Center(
      child: Stack(
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: LiquidLinearProgressIndicator(
              value: AppValues.opacity, // Defaults to 0.5.
              valueColor: const AlwaysStoppedAnimation(AppColors.colorPrimary),
              backgroundColor: Colors.white,
              borderColor: Colors.black,
              borderWidth: 5.0,
              direction: Axis.vertical,
             
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              BuildImage(
                image: "images/anilogo.png",
                height: AppValues.height_300,
                width: AppValues.width_300,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
