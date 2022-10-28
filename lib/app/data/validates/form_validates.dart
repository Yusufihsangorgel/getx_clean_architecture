import 'package:flutter_getx_template/app/core/values/app_values.dart';

import 'package:get/get.dart';



class FormValidates {
  // ValidateType enum switch case

  static String? validate(
      {required RxString value,
      required RxnString errorValue,
      required ValidateType type}) {
    switch (type) {

      //validate switch case enums
      case ValidateType.email:
        return validateEmail(value, errorValue);
      case ValidateType.password:
        return validatePassword(value, errorValue);
      case ValidateType.name:
        return validateName(value, errorValue);

      case ValidateType.phone:
        return validatePhone(value, errorValue);

      case ValidateType.confirmPassword:
        return validateConfirmPassword(value, errorValue);

      case ValidateType.username:
        return validateUsername(value, errorValue);
      case ValidateType.taxnumber:
        return validateTaxNumber(value, errorValue);

      case ValidateType.taxoffice:
        return validateTaxOffice(value, errorValue);

      case ValidateType.url:
        return validateUrl(value, errorValue);

      case ValidateType.address:
        return validateAddress(value, errorValue);

      case ValidateType.businedId:
        return validateBusinedId(value, errorValue);
    }
  }

  static String? validateTaxNumber(RxString value, RxnString errorValue) {
    if (value.value.isEmpty) {
      errorValue.value = "Vergi numarası boş bırakılamaz";

      return errorValue.value;
    } else if (value.value.length < AppValues.taxnumberWordCount) {
      errorValue.value = "Vergi numarası 10 karakterden az olamaz";

      return errorValue.value;
    } else {
      errorValue.value = null;

      return errorValue.value;
    }
  }

  static String? validateTaxOffice(RxString value, RxnString errorValue) {
    if (value.value.isEmpty) {
      errorValue.value = "Vergi dairesi boş bırakılamaz";

      return errorValue.value;
    } else if (value.value.length < 3) {
      errorValue.value = "Vergi dairesi 3 karakterden az olamaz";

      return errorValue.value;
    } else {
      errorValue.value = null;

      return errorValue.value;
    }
  }

  static String? validateUrl(RxString value, RxnString errorValue) {
    if (value.value.isEmpty) {
      errorValue.value = "Url boş bırakılamaz";

      return errorValue.value;
    } else if (value.value.length < 3) {
      errorValue.value = "Url 3 karakterden az olamaz";

      return errorValue.value;
    } else {
      errorValue.value = null;

      return errorValue.value;
    }
  }

  static String? validateAddress(RxString value, RxnString errorValue) {
    if (value.value.isEmpty) {
      errorValue.value = "Adres boş bırakılamaz";

      return errorValue.value;
    } else if (value.value.length < 3) {
      errorValue.value = "Adres 3 karakterden az olamaz";

      return errorValue.value;
    } else {
      errorValue.value = null;

      return errorValue.value;
    }
  }

  static String? validateBusinedId(RxString value, RxnString errorValue) {
    if (value.value.isEmpty) {
      errorValue.value = "İşletme id boş bırakılamaz";

      return errorValue.value;
    } else if (value.value.length < 3) {
      errorValue.value = "İşletme id 3 karakterden az olamaz";

      return errorValue.value;
    }
    // check number form
    else if (int.tryParse(value.value) == null) {
      errorValue.value = "İşletme id sayısal olmalıdır";

      return errorValue.value;
    } else {
      errorValue.value = null;

      return errorValue.value;
    }
  }

//validates

//validate username
  static String? validateUsername(RxString value, RxnString errorValue) {
    if (value.value.isEmpty) {
      errorValue.value = "Kullanıcı adı boş olamaz";

      return errorValue.value;
    } else if (value.value.length < 3) {
      errorValue.value = "Kullanıcı adı 3 karakterden küçük olamaz ";

      return errorValue.value;
    } else if (!GetUtils.isUsername(value.value)) {
      errorValue.value = "Kullanıcı adı geçersiz";

      return errorValue.value;
    } else {
      errorValue.value = null;

      return errorValue.value;
    }
  }

  static String? validateEmail(RxString value, RxnString errorValue) {
    if (value.value.isEmpty) {
      errorValue.value = "Email boş bırakılamaz";

      return errorValue.value;
    } else if (!GetUtils.isEmail(value.value)) {
      errorValue.value = "Geçerli bir email giriniz";

      return errorValue.value;
    } else {
      errorValue.value = null;

      return errorValue.value;
    }
  }

  static String? validatePassword(RxString value, RxnString errorValue) {
    if (value.value.isEmpty) {
      errorValue.value = "Şifre boş bırakılamaz";

      return errorValue.value;
    } else if (value.value.length < 4) {
      errorValue.value = "Şifre en az 4 karakter olmalıdır";

      return errorValue.value;
    } else {
      errorValue.value = null;

      return errorValue.value;
    }
  }

  //confirm password
  static String? validateConfirmPassword(RxString value, RxnString errorValue) {
    if (value.value.isEmpty) {
      errorValue.value = "Şifre boş bırakılamaz";

      return errorValue.value;
    } else if (value.value.length < 6) {
      errorValue.value = "Şifre en az 6 karakter olmalıdır";

      return errorValue.value;
    } else {
      errorValue.value = null;

      return errorValue.value;
    }
  }

  static String? validateName(RxString value, RxnString errorValue) {
    if (value.value.isEmpty) {
      errorValue.value = "İsim boş bırakılamaz";

      return errorValue.value;
    } else if (value.value.length < 3) {
      errorValue.value = "İsim en az 3 karakter olmalıdır";

      return errorValue.value;
    } else {
      errorValue.value = null;

      return errorValue.value;
    }
  }

  static String? validateSurname(RxString value, RxnString errorValue) {
    if (value.value.isEmpty) {
      errorValue.value = "Soyisim boş bırakılamaz";

      return errorValue.value;
    } else if (value.value.length < 3) {
      errorValue.value = "Soyisim en az 3 karakter olmalıdır";

      return errorValue.value;
    } else {
      errorValue.value = null;

      return errorValue.value;
    }
  }

  static String? validatePhone(RxString value, RxnString errorValue) {
    if (value.value.isEmpty) {
      errorValue.value = "Telefon boş bırakılamaz";

      return errorValue.value;
    } else if (value.value.length < AppValues.telephoneWordCount) {
      errorValue.value = "Telefon en az 10 karakter olmalıdır";

      return errorValue.value;
    } else {
      errorValue.value = null;

      return errorValue.value;
    }
  }
}

enum ValidateType {
  email,
  password,
  confirmPassword,
  name,
  phone,
  username,
  taxnumber,
  taxoffice,
  url,
  address,
  businedId
}
