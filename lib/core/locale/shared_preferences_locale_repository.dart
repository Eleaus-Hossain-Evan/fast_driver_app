import 'package:fast_driver_app/core/locale/locale_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLocaleRepository implements LocaleRepository {
  SharedPreferencesLocaleRepository(this._sharedPreferences);

  static const String localeStorageKey = 'app_locale';

  final SharedPreferences _sharedPreferences;

  @override
  Locale? readLocale() {
    return parseLocale(_sharedPreferences.getString(localeStorageKey));
  }

  @override
  Future<void> saveLocale(Locale locale) {
    return _sharedPreferences.setString(localeStorageKey, serializeLocale(locale));
  }
}
