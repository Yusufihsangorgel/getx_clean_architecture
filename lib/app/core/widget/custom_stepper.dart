import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package: myGetxArchitecture/app/core/values/app_colors.dart';
import 'package: myGetxArchitecture/app/core/values/app_values.dart';
import 'package: myGetxArchitecture/app/core/widget/buildText.dart';
import 'package: myGetxArchitecture/app/core/widget/buildTextFormField.dart';
import 'package: myGetxArchitecture/app/core/widget/custom_dropdown.dart';
import 'package: myGetxArchitecture/app/core/widget/elevated_container.dart';
import 'package: myGetxArchitecture/app/core/widget/islemButton.dart';
import 'package: myGetxArchitecture/app/core/widget/ripple.dart';
import 'package: myGetxArchitecture/app/core/widget/sarContainer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:country_picker/country_picker.dart';

class CustomStepper extends StatefulWidget {
  final void Function() onStepCancel;
  final void Function() onStepContinue;
  final void Function(int) onStepTapped;
  final int currentStep;
  final int maxStep;
  final String? birinciError;
  final String? ikinciError;
  final String? ucuncuError;
  final String? dorduncuError;
  final String? besinciError;
  final String? altinciError;
  final String? yedinciError;
  final String? sekizinciError;
  final String? dokuzuncuError;
  final String? onuncuError;
  final String? onbirinciError;
  final String? onikinciError;

  final Country? country;

  final void Function(String?) onChangedBirinci;
  final void Function(String?)? onChangedIkinci;
  final void Function(String?)? onChangedUcuncu;
  final void Function(String?)? onChangedDorduncu;
  final void Function(String?)? onChangedBesinci;
  final void Function(String?)? onChangedAltinci;
  final void Function(String?)? onChangedYedinci;
  final void Function(String?)? onChangedSekizinci;
  final void Function(String?)? onChangedDokuzuncu;
  final void Function(String?)? onChangedOnuncu;
  final void Function(String?)? onChangedOnbirinci;
  final void Function(String?)? onChangedOnikinci;

  final void Function(String?)? onPotaChanged1;
  final void Function(String?)? onPotaChanged2;
  final void Function(String?)? onPotaChanged3;

  final void Function(Country)? onSelect;

  final void Function()? kaydetPress;

  final String birinciStepText;
  final String ikinciStepText;
  final String? ucuncuStepText;
 
  final String? dorduncuStepText;
  final String? besinciStepText;
  final String? altinciStepText;
  final String? yedinciStepText;
  final String? sekizinciStepText;
  final String? dokuzuncuStepText;
  final String? onuncuStepText;
  final String? onbirinciStepText;
  final String? onikinciStepText;

  final List<String>? birinciStepList;
  final List<String>? ikinciStepList;
  final List<String>? ucuncuStepList;
  final List<String>? dorduncuStepList;
  final List<String>? besinciStepList;
  final List<String>? altinciStepList;
  final List<String>? yedinciStepList;
  final List<String>? sekizinciStepList;
  final List<String>? dokuzuncuStepList;
  final List<String>? onuncuStepList;
  final List<String>? onbirinciStepList;
  final List<String>? onikinciStepList;

  final String? birinciValue;
  final String? ikinciValue;
  final String? ucuncuValue;
  final String? dorduncuValue;
  final String? besinciValue;
  final String? altinciValue;
  final String? yedinciValue;
  final String? sekizinciValue;
  final String? dokuzuncuValue;
  final String? onuncuValue;
  final String? onbirinciValue;
  final String? onikinciValue;

  final String birinciText;
  final String ikinciText;
  final String? ucuncuText;
   final String? birinciPotaText;
  final String? ikinciPotaText;
  final String? ucuncuPotaText;
  final String? dorduncuText;
  final String? besinciText;
  final String? altinciText;
  final String? yedinciText;
  final String? sekizinciText;
  final String? dokuzuncuText;
  final String? onuncuText;
  final String? onbirinciText;
  final String? onikinciText;

  final String doneText;

  CustomStepper({
    Key? key,
    required this.onStepCancel,
    required this.onStepContinue,
    required this.onStepTapped,
    required this.currentStep,
    required this.kaydetPress,
    required this.onChangedBirinci,
    this.onChangedIkinci,
    this.onChangedUcuncu,
    this.onChangedDorduncu,
    this.onChangedBesinci,
    this.onChangedAltinci,
    this.onChangedYedinci,
    this.onChangedSekizinci,
    this.onChangedDokuzuncu,
    this.onChangedOnuncu,
    this.onChangedOnbirinci,
    this.onChangedOnikinci,
    required this.birinciStepText,
    required this.ikinciStepText,
    this.ucuncuStepText,
    required this.birinciText,
    required this.ikinciText,
    this.ucuncuText,
    this.birinciError,
    this.ikinciError,
    this.ucuncuError,
    this.dorduncuText,
    this.dorduncuError,
    this.besinciError,
    this.altinciError,
    this.yedinciError,
    this.sekizinciError,
    this.dokuzuncuError,
    this.onuncuError,
    this.onbirinciError,
    this.onikinciError,
    this.dorduncuStepText,
    this.besinciStepText,
    this.altinciStepText,
    this.yedinciStepText,
    this.sekizinciStepText,
    this.dokuzuncuStepText,
    this.onuncuStepText,
    this.onbirinciStepText,
    this.onikinciStepText,
    this.besinciText,
    this.altinciText,
    this.yedinciText,
    this.sekizinciText,
    this.dokuzuncuText,
    this.onuncuText,
    this.onbirinciText,
    this.onikinciText,
    required this.maxStep,
    this.birinciStepList,
    this.ikinciStepList,
    this.ucuncuStepList,
    this.dorduncuStepList,
    this.besinciStepList,
    this.altinciStepList,
    this.yedinciStepList,
    this.sekizinciStepList,
    this.dokuzuncuStepList,
    this.onuncuStepList,
    this.onbirinciStepList,
    this.onikinciStepList,
    this.birinciValue,
    this.ikinciValue,
    this.ucuncuValue,
    this.dorduncuValue,
    this.besinciValue,
    this.altinciValue,
    this.yedinciValue,
    this.sekizinciValue,
    this.dokuzuncuValue,
    this.onuncuValue,
    this.onbirinciValue,
    this.onikinciValue,
    this.country,
    this.onSelect,
    this.onPotaChanged1,
    this.onPotaChanged2,
    this.onPotaChanged3, required this.doneText, this.birinciPotaText, this.ikinciPotaText, this.ucuncuPotaText,
  }) : super(key: key);

  @override
  State<CustomStepper> createState() => _DetailsDialogState();
}

class _DetailsDialogState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stepper(
          currentStep: widget.currentStep,
          onStepCancel: widget.onStepCancel,
          onStepContinue: widget.onStepContinue,
          onStepTapped: widget.onStepTapped,
          controlsBuilder: (context, details) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                widget.currentStep != widget.maxStep
                    ? Row(
                        children: [
                          details.currentStep > 0
                              ? IslemButton(
                                  backgroundColor: AppColors.white,
                                  width: AppValues.width_100,
                                  height: AppValues.height_40,
                                   icon: FontAwesomeIcons.backward,
                    iconColor: AppColors.colorPrimary,
                                  onPressed: widget.onStepCancel,
                                )
                              : Container(),
                          IslemButton(
                              backgroundColor: AppColors.colorPrimary,
                              width: AppValues.width_100,
                              height: AppValues.height_40,
                               icon: FontAwesomeIcons.check,
                    iconColor: AppColors.colorWhite,
                              fontSize: AppValues.fontSize_20,
                              onPressed: widget.onStepContinue)
                        ],
                      )
                    : Container(),
              ],
            );
          },
          steps: <Step>[
            if (widget.birinciValue != null)
              Step(
                  title: Text(widget.birinciText),
                  content: CustomDropDown(
                    value: widget.birinciValue!,
                    list: widget.birinciStepList!,
                    onChanged: widget.onChangedBirinci,
                    text: widget.birinciStepText,
                  )),
            if (widget.birinciValue == null)
              Step(
                  title: Text(widget.birinciText),
                  content: Padding(
                    padding: EdgeInsets.only(
                        top: AppValues.height_10, bottom: AppValues.height_20),
                    child: BuildTextFormField(
                        error: widget.birinciError,
                        text: widget.birinciStepText,
                        changed: (String value) {
                          widget.onChangedBirinci(value);
                        }),
                  )),
            if (widget.country != null)
              Step(
                  title: Text(widget.ikinciText),
                  content: Ripple(
                    onTap: () {
                      showCountryPicker(
                          context: context,
                          countryListTheme: CountryListThemeData(
                            flagSize: AppValues.height_30,
                            backgroundColor: Colors.white,
                            textStyle: TextStyle(
                                fontSize: AppValues.height_30,
                                color: Colors.blueGrey),
                            bottomSheetHeight: AppValues
                                .height_300, // Optional. Country list modal height
                            //Optional. Sets the border radius for the bottomsheet.
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppValues.height_20),
                              topRight: Radius.circular(AppValues.height_20),
                            ),
                            //Optional. Styles the search field.
                            inputDecoration: InputDecoration(
                              labelText: 'Search',
                              hintText: 'Start typing to search',
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.close)),
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: const Color(0xFF8C98A8)
                                      .withOpacity(AppValues.opacity),
                                ),
                              ),
                            ),
                          ),
                          onSelect: (Country country) {
                            widget.onSelect!(country);
                          });
                    },
                    child: ElevatedContainer(
                      height: AppValues.height_50,
                      width: AppValues.width_200,
                      bgColor: AppColors.colorDark,
                      child: Center(
                        child: BuildText(
                          text: widget.country!.displayNameNoCountryCode,
                          color: AppColors.colorWhite,
                          fontsize: AppValues.fontSize_20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )),
            if (widget.ikinciValue != null && widget.country == null)
              Step(
                  title: Text(widget.ikinciText),
                  content: CustomDropDown(
                    value: widget.ikinciValue ?? null,
                    list: widget.ikinciStepList ?? ["not found"],
                    onChanged: widget.onChangedIkinci,
                    text: widget.ikinciStepText,
                  )),
            if (widget.ikinciValue == null &&
                widget.country == null &&
                widget.onChangedIkinci != null)
              Step(
                title: Text(widget.ikinciText),
                content: Padding(
                  padding: EdgeInsets.only(
                      top: AppValues.height_10, bottom: AppValues.height_30),
                  child: BuildTextFormField(
                      error: widget.ikinciError,
                      text: widget.ikinciStepText,
                      changed: (String value) {
                       setState(() {
                          widget.onChangedIkinci!(value);
                       });
                      }),
                ),
              ),
            if (widget.ucuncuValue != null && widget.onPotaChanged1 == null)
              Step(
                  title: Text(widget.ucuncuText!),
                  content: CustomDropDown(
                    value: widget.ucuncuValue!,
                    list: widget.ucuncuStepList!,
                    onChanged: widget.onChangedBirinci,
                    text: widget.ucuncuStepText!,
                  )),
            if (widget.ucuncuStepText != null &&
                widget.ucuncuValue == null &&
                widget.onPotaChanged1 == null)
              Step(
                title: Text(widget.ucuncuText!),
                content: Padding(
                  padding: EdgeInsets.only(
                      top: AppValues.height_10, bottom: AppValues.height_30),
                  child: BuildTextFormField(
                      error: widget.ucuncuError,
                      text: widget.ucuncuStepText!,
                      changed: (String value) {
                        widget.onChangedUcuncu!(value);
                      }),
                ),
              ),
            if (widget.onPotaChanged1 != null &&
                widget.onPotaChanged2 != null &&
                widget.onPotaChanged3 != null)
              Step(
                title: Text(widget.ucuncuText!),
                content: Padding(
                  padding: EdgeInsets.only(
                      top: AppValues.height_10, bottom: AppValues.height_30),
                  child: SizedBox(
                    height: AppValues.height_50,
                    width: AppValues.width_400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: AppValues.height_50,
                          width: AppValues.width_100,
                          child: BuildTextFormField(
                              error: widget.ucuncuError,
                              text: widget.birinciPotaText!,
                              changed: (String value) {
                                widget.onPotaChanged1!(value);
                              }),
                        ),
                        SizedBox(
                          height: AppValues.height_50,
                          width: AppValues.width_100,
                          child: BuildTextFormField(
                              error: widget.ucuncuError,
                              text: widget.ikinciPotaText!,
                              changed: (String value) {
                                widget.onPotaChanged2!(value);
                              }),
                        ),
                        SizedBox(
                          height: AppValues.height_50,
                          width: AppValues.width_100,
                          child: BuildTextFormField(
                              error: widget.ucuncuError,
                              text: widget.ucuncuPotaText!,
                              changed: (String value) {
                                widget.onPotaChanged3!(value);
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            if (widget.dorduncuValue != null && widget.dorduncuStepText != null)
              Step(
                  title: Text(widget.dorduncuText!),
                  content: CustomDropDown(
                    value: widget.dorduncuValue!,
                    list: widget.dorduncuStepList!,
                    onChanged: widget.onChangedBirinci,
                    text: widget.dorduncuStepText!,
                  )),
            if (widget.dorduncuStepText != null && widget.dorduncuValue == null)
              Step(
                title: Text(widget.dorduncuText!),
                content: Padding(
                  padding: EdgeInsets.only(
                      top: AppValues.height_10, bottom: AppValues.height_30),
                  child: BuildTextFormField(
                      error: widget.dorduncuError,
                      text: widget.dorduncuStepText!,
                      changed: (String value) {
                        widget.onChangedDorduncu!(value);
                      }),
                ),
              ),
            if (widget.besinciValue != null)
              Step(
                  title: Text(widget.besinciText!),
                  content: CustomDropDown(
                    value: widget.besinciValue!,
                    list: widget.besinciStepList!,
                    onChanged: widget.onChangedBirinci,
                    text: widget.besinciStepText!,
                  )),
            if (widget.besinciStepText != null && widget.besinciValue == null)
              Step(
                title: Text(widget.besinciText!),
                content: Padding(
                  padding: EdgeInsets.only(
                      top: AppValues.height_10, bottom: AppValues.height_30),
                  child: BuildTextFormField(
                      error: widget.besinciError,
                      text: widget.besinciStepText!,
                      changed: (String value) {
                        widget.onChangedBesinci!(value);
                      }),
                ),
              ),
            if (widget.altinciValue != null)
              Step(
                  title: Text(widget.altinciText!),
                  content: CustomDropDown(
                    value: widget.altinciValue!,
                    list: widget.altinciStepList!,
                    onChanged: widget.onChangedBirinci,
                    text: widget.altinciStepText!,
                  )),
            if (widget.altinciStepText != null && widget.altinciValue == null)
              Step(
                title: Text(widget.altinciText!),
                content: Padding(
                  padding: EdgeInsets.only(
                      top: AppValues.height_10, bottom: AppValues.height_30),
                  child: BuildTextFormField(
                      error: widget.altinciError,
                      text: widget.altinciStepText!,
                      changed: (String value) {
                        widget.onChangedAltinci!(value);
                      }),
                ),
              ),
            if (widget.yedinciValue != null)
              Step(
                  title: Text(widget.yedinciText!),
                  content: CustomDropDown(
                    value: widget.yedinciValue!,
                    list: widget.yedinciStepList!,
                    onChanged: widget.onChangedBirinci,
                    text: widget.yedinciStepText!,
                  )),
            if (widget.yedinciStepText != null && widget.yedinciValue == null)
              Step(
                title: Text(widget.yedinciText!),
                content: Padding(
                  padding: EdgeInsets.only(
                      top: AppValues.height_10, bottom: AppValues.height_30),
                  child: BuildTextFormField(
                      error: widget.yedinciError,
                      text: widget.yedinciStepText!,
                      changed: (String value) {
                        widget.onChangedYedinci!(value);
                      }),
                ),
              ),
            if (widget.sekizinciValue != null)
              Step(
                  title: Text(widget.sekizinciText!),
                  content: CustomDropDown(
                    value: widget.sekizinciValue!,
                    list: widget.sekizinciStepList!,
                    onChanged: widget.onChangedBirinci,
                    text: widget.sekizinciStepText!,
                  )),
            if (widget.sekizinciStepText != null &&
                widget.sekizinciValue == null)
              Step(
                title: Text(widget.sekizinciText!),
                content: Padding(
                  padding: EdgeInsets.only(
                      top: AppValues.height_10, bottom: AppValues.height_30),
                  child: BuildTextFormField(
                      error: widget.sekizinciError,
                      text: widget.sekizinciStepText!,
                      changed: (String value) {
                        widget.onChangedSekizinci!(value);
                      }),
                ),
              ),
            if (widget.dokuzuncuValue != null)
              Step(
                  title: Text(widget.dokuzuncuText!),
                  content: CustomDropDown(
                    value: widget.dokuzuncuValue!,
                    list: widget.dokuzuncuStepList!,
                    onChanged: widget.onChangedBirinci,
                    text: widget.dokuzuncuStepText!,
                  )),
            if (widget.dokuzuncuStepText != null)
              Step(
                title: Text(widget.dokuzuncuText!),
                content: Padding(
                  padding: EdgeInsets.only(
                      top: AppValues.height_10, bottom: AppValues.height_30),
                  child: BuildTextFormField(
                      error: widget.dokuzuncuError,
                      text: widget.dokuzuncuStepText!,
                      changed: (String value) {
                        widget.onChangedDokuzuncu!(value);
                      }),
                ),
              ),
            if (widget.onuncuValue != null)
              Step(
                  title: Text(widget.onuncuText!),
                  content: CustomDropDown(
                    value: widget.onuncuValue!,
                    list: widget.onuncuStepList!,
                    onChanged: widget.onChangedBirinci,
                    text: widget.onuncuStepText!,
                  )),
            if (widget.onuncuStepText != null && widget.onuncuValue == null)
              Step(
                title: Text(widget.onuncuText!),
                content: Padding(
                  padding: EdgeInsets.only(
                      top: AppValues.height_10, bottom: AppValues.height_30),
                  child: BuildTextFormField(
                      error: widget.onuncuError,
                      text: widget.onuncuStepText!,
                      changed: (String value) {
                        widget.onChangedOnuncu!(value);
                      }),
                ),
              ),
            if (widget.onbirinciValue != null)
              Step(
                  title: Text(widget.onbirinciText!),
                  content: CustomDropDown(
                    value: widget.onbirinciValue!,
                    list: widget.onbirinciStepList!,
                    onChanged: widget.onChangedBirinci,
                    text: widget.onbirinciStepText!,
                  )),
            if (widget.onbirinciStepText != null &&
                widget.onbirinciValue == null)
              Step(
                title: Text(widget.onbirinciText!),
                content: Padding(
                  padding: EdgeInsets.only(
                      top: AppValues.height_10, bottom: AppValues.height_30),
                  child: BuildTextFormField(
                      error: widget.onbirinciError,
                      text: widget.onbirinciStepText!,
                      changed: (String value) {
                        widget.onChangedOnbirinci!(value);
                      }),
                ),
              ),
            if (widget.onikinciValue != null)
              Step(
                  title: Text(widget.onikinciText!),
                  content: CustomDropDown(
                    value: widget.onikinciValue!,
                    list: widget.onikinciStepList!,
                    onChanged: widget.onChangedBirinci,
                    text: widget.onikinciStepText!,
                  )),
            if (widget.onikinciStepText != null && widget.onikinciValue == null)
              Step(
                title: Text(widget.onikinciText!),
                content: Padding(
                  padding: EdgeInsets.only(
                      top: AppValues.height_10, bottom: AppValues.height_30),
                  child: BuildTextFormField(
                      error: widget.onikinciError,
                      text: widget.onikinciStepText!,
                      changed: (String value) {
                        widget.onChangedOnikinci!(value);
                      }),
                ),
              ),
            Step(
              title: Text(widget.doneText),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IslemButton(
                    backgroundColor: AppColors.colorWhite,
                    width: AppValues.width_100,
                    height: AppValues.height_40,
                    icon: FontAwesomeIcons.backward,
                    iconColor: AppColors.colorPrimary,
                    onPressed: () {
                      widget.onStepCancel();
                      Get.back();
                    },
                  ),
                  IslemButton(
                      backgroundColor: AppColors.colorPrimary,
                      width: AppValues.width_100,
                      height: AppValues.height_40,
                      icon: FontAwesomeIcons.check,
                      iconColor: AppColors.colorWhite,
                      onPressed: widget.kaydetPress),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
