import 'package:flutter/material.dart';

import 'supported_locales.dart';

abstract class LocaleRepository {
  Locale? readLocale();

  Future<void> saveLocale(Locale locale);
}

String serializeLocale(Locale locale) {
  final countryCode = locale.countryCode;
  if (countryCode == null || countryCode.isEmpty) {
    return locale.languageCode;
  }

  return '${locale.languageCode}_$countryCode';
}

Locale? parseLocale(String? raw) {
  if (raw == null || raw.trim().isEmpty) {
    return null;
  }

  final normalized = raw.trim().replaceAll('-', '_');
  final parts = normalized.split('_');
  if (parts.isEmpty || parts.first.isEmpty) {
    return null;
  }

  final languageCode = parts.first;
  final countryCode = parts.length > 1 && parts[1].isNotEmpty ? parts[1] : null;
  return Locale.fromSubtags(languageCode: languageCode, countryCode: countryCode);
}

bool isSameLocale(Locale first, Locale second) {
  return first.languageCode == second.languageCode && first.countryCode == second.countryCode;
}

Locale resolveSupportedLocale(
  Locale target,
  List<Locale> supportedLocales, {
  Locale? fallback,
}) {
  fallback ??= AppSupportedLocales.fallback;
  Locale? languageMatch;
  for (final locale in supportedLocales) {
    if (isSameLocale(locale, target)) {
      return locale;
    }
    if (languageMatch == null && locale.languageCode == target.languageCode) {
      languageMatch = locale;
      return languageMatch;
    }
  }

  return languageMatch ?? fallback;
}
