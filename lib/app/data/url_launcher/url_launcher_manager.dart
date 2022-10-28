
import 'dart:io';




import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncherManager {
  static call({required String number}) async {
    final Uri phoneLaunchUri = Uri(
      scheme: Platform.isAndroid ? 'tel' : 'telprompt',
      path: "+90$number",
    );
    if (await launchUrl(phoneLaunchUri)) {
      await launchUrl(phoneLaunchUri);
    } else {
      CustomSnackBar.showCustomErrorSnackBar(
        title: "Hata",
        message: "Telefon numarası bulunamadı",
      );
    }
  }

  static sms({required String number}) async {
    final Uri smsLaunchUri = Uri(
      scheme: Platform.isAndroid ? 'sms' : 'sms',
      path: "0$number",
    );
    if (await launchUrl(smsLaunchUri)) {
      await launchUrl(smsLaunchUri);
    } else {
      CustomSnackBar.showCustomErrorSnackBar(
        title: "Hata",
        message: "Telefon numarası bulunamadı",
      );
    }
  }

  static openBrowser({required String url}) async {
    final Uri browserLaunchUri = Uri(
       scheme: 'http',
      path: url,
    );
    if (await canLaunchUrl(browserLaunchUri)) {
      await launchUrlString(url);
    } else {
      CustomSnackBar.showCustomErrorSnackBar(
        title: "Hata",
        message: "Url bulunamadı",
      );
    }
  }
}



