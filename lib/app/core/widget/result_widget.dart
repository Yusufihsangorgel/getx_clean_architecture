import 'package:flutter/material.dart';
import 'package: myGetxArchitecture/app/core/values/app_colors.dart';
import 'package: myGetxArchitecture/app/core/values/app_values.dart';
import 'package: myGetxArchitecture/app/core/values/text_styles.dart';
import 'package: myGetxArchitecture/app/core/widget/buildText.dart';
import 'package: myGetxArchitecture/app/core/widget/custom_app_bar.dart';
import 'package: myGetxArchitecture/app/core/widget/ripple.dart';
import 'package: myGetxArchitecture/app/core/widget/sarContainer.dart';

class ResultWidget extends StatelessWidget {
  final String result;
  final String? result2;
  final String title;
  final double? height;
  final double? width;
  final String informationTitle;
  final String informationText;

  const ResultWidget({
    Key? key,
    required this.result,
    required this.title,
    this.height,
    this.width,
    this.result2,
    required this.informationTitle,
    required this.informationText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SarContainer(
          borderColor: AppColors.white,
          sarmaColor: AppColors.colorPrimary,
          width: width ?? AppValues.width_200,
          height: height ?? AppValues.height_70,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildText(
                  text: title,
                  textStyle: whiteText16,
                ),
                BuildText(
                  text: result,
                  textStyle: whiteText32,
                ),
                if (result2 != null)
                  BuildText(
                    text: result2 ?? "...",
                    textStyle: whiteText32,
                  ),
              ],
            ),
          ),
        ),
        if(informationText != "")
        Positioned(
          top: 0,
          right: 0,
          child: Ripple(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: AppValues.height_400,
                    child: Scaffold(
                      appBar: CustomAppBar(
                        appBarTitleText: informationTitle,
                      ),
                      body: Center(
                        child: BuildText(
                            text: informationText, textStyle: blackText16),
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              height: AppValues.height_35,
              width: AppValues.width_35,
              decoration: BoxDecoration(
                color: AppColors.blueDark,
                borderRadius:
                    BorderRadius.all(Radius.circular(AppValues.borderRadius10)),
                border: Border.all(color: AppColors.white),
              ),
              child: Center(
                child: BuildText(
                  text: "i",
                  textStyle: whiteText18,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
