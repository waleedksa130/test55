import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class AppLocale {
  static const LocalizationsDelegate<AppLocale> delegate = _AppLocalDelegate();

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      "titaal_spash": "Splash Screen",
      "text": "Welcome to the App",
      "home_page": "Home Page",
      "your_name": "Your Name",
      "next": "Next",
      "close": "Close",
      "next_page": "Next Page",
      "name": "Name",
      "back": "Back"
    },
    'ar': {
      "titaal_spash": "الشاشة الترحيبية",
      "text": "مرحبًا بك في التطبيق",
      "home_page": "الصفحة الرئيسية",
      "your_name": "اسمك",
      "next": "التالي",
      "close": "إغلاق",
      "next_page": "الصفحة التالية",
      "name": "الاسم",
      "back": "رجوع"
    },
  };

  final Locale locale;

  AppLocale(this.locale);

  static AppLocale? of(BuildContext context) {
    return Localizations.of<AppLocale>(context, AppLocale);
  }

  String getTranslated(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? key;
  }
}

class _AppLocalDelegate extends LocalizationsDelegate<AppLocale> {
  const _AppLocalDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<AppLocale> load(Locale locale) {
    return SynchronousFuture<AppLocale>(AppLocale(locale));
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocale> old) => false;
}

String getLang(BuildContext context, String key) {
  return AppLocale.of(context)!.getTranslated(key);
}
