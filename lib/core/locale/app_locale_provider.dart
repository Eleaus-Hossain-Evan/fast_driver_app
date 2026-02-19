import 'dart:ui';

import 'package:fast_driver_app/core/locale/locale_repository.dart';
import 'package:fast_driver_app/core/locale/shared_preferences_locale_repository.dart';
import 'package:fast_driver_app/core/locale/supported_locales.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_locale_provider.g.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('sharedPreferencesProvider must be overridden at app bootstrap.');
});

@riverpod
LocaleRepository localeRepository(Ref ref) {
  final sharedPreferences = ref.watch(sharedPreferencesProvider);
  return SharedPreferencesLocaleRepository(sharedPreferences);
}

@Riverpod(keepAlive: true)
class AppLocale extends _$AppLocale {
  @override
  Locale build() {
    final repository = ref.watch(localeRepositoryProvider);
    final supported = ref.watch(supportedLocalesProvider);
    final storedLocale = repository.readLocale();
    if (storedLocale != null) {
      return resolveSupportedLocale(storedLocale, supported);
    }

    final systemLocale = PlatformDispatcher.instance.locale;
    return resolveSupportedLocale(systemLocale, supported);
  }

  Future<void> setLocale(Locale locale) async {
    final supported = ref.watch(supportedLocalesProvider);
    final nextLocale = resolveSupportedLocale(locale, supported);

    if (isSameLocale(state, nextLocale)) {
      return;
    }

    state = nextLocale;
    await ref.read(localeRepositoryProvider).saveLocale(nextLocale);
  }
}
