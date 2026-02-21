import 'package:fast_driver_app/core/core.dart';
import 'package:fast_driver_app/features/splash/splash_screen.dart';
import 'package:fast_driver_app/gen/app_localizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      observers: [
        TalkerRiverpodObserver(
          settings: TalkerRiverpodLoggerSettings(
            enabled: kDebugMode,
            printProviderDisposed: true,
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocaleProvider);

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,

      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.light,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: locale,
        home: const SplashScreen(),
      ),
    );
  }
}
