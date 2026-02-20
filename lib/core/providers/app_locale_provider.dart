import 'package:fast_driver_app/gen/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../utils/local_storage/shared_preference_provider.dart';

part 'app_locale_provider.g.dart';

const _localeLanguageCodeKey = 'app_locale_language_code';

@riverpod
class AppLocale extends _$AppLocale {
  @override
  Locale build() {
    final supportedLocales = AppLocalizations.supportedLocales;
    final savedLanguageCode = ref
        .watch(sharedPreferencesProvider)
        .getString(_localeLanguageCodeKey);

    if (savedLanguageCode == null) {
      return supportedLocales.first;
    }

    return supportedLocales.firstWhere(
      (locale) => locale.languageCode == savedLanguageCode,
      orElse: () => supportedLocales.first,
    );
  }

  Future<void> setLocale(Locale locale) async {
    final supportedLocales = AppLocalizations.supportedLocales;
    final nextLocale = supportedLocales.firstWhere(
      (supportedLocale) => supportedLocale.languageCode == locale.languageCode,
      orElse: () => state,
    );

    if (nextLocale.languageCode == state.languageCode) {
      return;
    }

    state = nextLocale;
    await ref
        .read(sharedPreferencesProvider)
        .setString(_localeLanguageCodeKey, nextLocale.languageCode);
  }
}
