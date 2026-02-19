import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Central single source of truth for supported locales. Provide the list via
/// [supportedLocalesProvider] so other code (providers/widgets) can consume
/// the same authoritative list.
abstract final class AppSupportedLocales {
  static const Locale fallback = Locale('en', 'US');

  static const List<Locale> values = [
    Locale('en', 'US'),
    Locale('en', 'GB'),
    Locale('bn', 'BD'),
  ];
}

/// Riverpod provider that exposes the authoritative supported-locale list.
///
/// - Widgets can still read `WidgetsApp.of(context).supportedLocales` (the
///   MaterialApp will be wired to this provider), and
/// - Non-widget code (providers/notifiers) can watch this provider.
final supportedLocalesProvider = Provider<List<Locale>>((ref) => AppSupportedLocales.values);
