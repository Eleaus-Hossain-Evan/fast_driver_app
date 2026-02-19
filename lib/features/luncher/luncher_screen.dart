import 'package:fast_driver_app/core/core.dart';
import 'package:fast_driver_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LuncherScreen extends ConsumerWidget {
  const LuncherScreen({super.key});

  bool _sameLocale(Locale first, Locale second) {
    return first.languageCode == second.languageCode && first.countryCode == second.countryCode;
  }

  String _localeCode(Locale locale) {
    final countryCode = locale.countryCode;
    if (countryCode == null || countryCode.isEmpty) {
      return locale.languageCode;
    }

    return '${locale.languageCode}_$countryCode';
  }

  String _localeLabel(BuildContext context, Locale locale) {
    final localeNames = LocaleNames.of(context);
    final localeName = localeNames?.nameOf(_localeCode(locale));
    if (localeName != null && localeName.isNotEmpty) {
      return localeName;
    }

    final languageName = localeNames?.nameOf(locale.languageCode);
    if (languageName != null && languageName.isNotEmpty) {
      final countryCode = locale.countryCode;
      if (countryCode == null || countryCode.isEmpty) {
        return languageName;
      }

      return '$languageName ($countryCode)';
    }

    return locale.toLanguageTag();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(appLocaleProvider);
    final widgetsApp = context.findAncestorWidgetOfExactType<WidgetsApp>();
    final supportedLocales = widgetsApp?.supportedLocales.toList() ?? const [Locale('en', 'US')];
    final selectedLocale = resolveSupportedLocale(currentLocale, supportedLocales);

    return Scaffold(
      backgroundColor: AppColors.blackBack,
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Padding(
                padding: AppSpace.pagePadding,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppSpace.v4,
                    Assets.logos.appLogoWhite.image(
                      width: 343,
                      fit: BoxFit.contain,
                    ),
                    AppSpace.vertical(100),
                    Align(
                      alignment: Alignment.centerRight,
                      child: PopupMenuButton<Locale>(
                        offset: const Offset(0, 36),
                        color: AppColors.white,
                        constraints: const BoxConstraints(
                          minWidth: 150,
                          maxWidth: 200,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        onSelected: (locale) {
                          ref.read(appLocaleProvider.notifier).setLocale(locale);
                        },
                        itemBuilder: (_) {
                          return supportedLocales.map((locale) {
                            final isSelected = _sameLocale(locale, selectedLocale);
                            return PopupMenuItem<Locale>(
                              value: locale,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      _localeLabel(context, locale),
                                      style: AppTextStyles.bodySM.copyWith(
                                        color: AppColors.blackFontPrimary,
                                      ),
                                    ),
                                  ),
                                  if (isSelected) ...[
                                    AppSpace.h2,
                                    Assets.icons.approveFull.svg(
                                      width: 16,
                                      height: 16,
                                    ),
                                  ],
                                ],
                              ),
                            );
                          }).toList();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            _localeLabel(context, selectedLocale),
                            style: AppTextStyles.bodySM.copyWith(
                              color: AppColors.blackFontPrimary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
