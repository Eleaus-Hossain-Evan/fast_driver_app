import 'package:fast_driver_app/core/core.dart';
import 'package:fast_driver_app/gen/app_localizations.dart';
import 'package:fast_driver_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocalSelectionButton extends ConsumerWidget {
  const LocalSelectionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final supportedLocales = AppLocalizations.supportedLocales;
    final selectedLocale = ref.watch(appLocaleProvider);

    return PopupMenuButton<Locale>(
      offset: const Offset(0, 36),
      color: AppColors.white,
      constraints: const BoxConstraints(
        minWidth: 150,
        maxWidth: 200,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      onSelected: (locale) async {
        await ref.read(appLocaleProvider.notifier).setLocale(locale);
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
                    _localeDisplayName(locale),
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
          _localeDisplayName(selectedLocale),
          style: AppTextStyles.bodySM.copyWith(
            color: AppColors.blackFontPrimary,
          ),
        ),
      ),
    );
  }

  String _localeDisplayName(Locale locale) {
    return switch (locale.languageCode) {
      'en' => 'English (US)',
      'bn' => 'বাংলা',
      _ => locale.languageCode,
    };
  }

  bool _sameLocale(Locale first, Locale second) {
    return first.languageCode == second.languageCode;
  }
}
