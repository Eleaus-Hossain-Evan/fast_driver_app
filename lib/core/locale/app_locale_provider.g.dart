// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_locale_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localeRepositoryHash() => r'f3e4df688eb68472a361c4244fe34c540e8fe0f0';

/// See also [localeRepository].
@ProviderFor(localeRepository)
final localeRepositoryProvider = AutoDisposeProvider<LocaleRepository>.internal(
  localeRepository,
  name: r'localeRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localeRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LocaleRepositoryRef = AutoDisposeProviderRef<LocaleRepository>;
String _$appLocaleHash() => r'63634dbc04ad087e9143c83ddd52ad99f302d3c9';

/// See also [AppLocale].
@ProviderFor(AppLocale)
final appLocaleProvider = NotifierProvider<AppLocale, Locale>.internal(
  AppLocale.new,
  name: r'appLocaleProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appLocaleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppLocale = Notifier<Locale>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
