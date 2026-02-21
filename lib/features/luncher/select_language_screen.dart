import 'package:fast_driver_app/core/core.dart';
import 'package:fast_driver_app/features/auth/registration_screen.dart';
import 'package:fast_driver_app/gen/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../gen/ui_icons.dart';

class SelectLanguageScreen extends ConsumerWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final supportedLocales = AppLocalizations.supportedLocales;
    final selectedLocale = ref.watch(appLocaleProvider);

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBarWithOnlyBackButton(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpace.space4,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AppSpace.v6,
            // Text(
            //   'Select Language',
            //   style: AppTextStyles.titleXL.copyWith(
            //     color: AppColors.blackFontPrimary,
            //   ),
            // ),
            // AppSpace.v2,
            // Text(
            //   'Choose your preferred language',
            //   style: AppTextStyles.bodyMD.copyWith(
            //     color: AppColors.neutral600,
            //   ),
            // ),
            AppSpace.v11,

            // ── Language cards ──
            Expanded(
              child: GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: AppSpace.space3,
                  crossAxisSpacing: AppSpace.space3,
                  childAspectRatio: 2.2,
                ),
                children: List.generate(
                  supportedLocales.length,
                  (i) {
                    final locale = supportedLocales[i];
                    final isSelected =
                        locale.languageCode == selectedLocale.languageCode;
                    return _LanguageCard(
                      locale: locale,
                      isSelected: isSelected,
                      onTap: () => ref
                          .read(appLocaleProvider.notifier)
                          .setLocale(locale),
                    );
                  },
                ),
              ),
            ),

            // const Spacer(),

            // ── Continue button ──
            AppButton.filled(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegistrationScreen(),
                  ),
                );
              },
              text: 'Continue',
              icon: Icon(
                UIIcons.rightarrow,
                size: 24,
                color: AppColors.white50,
              ),
            ),
            60.verticalSpace,
            const FooterDeclaration(),
          ],
        ),
      ),
    );
  }
}

class _LanguageCard extends StatelessWidget {
  const _LanguageCard({
    required this.locale,
    required this.isSelected,
    required this.onTap,
  });

  final Locale locale;
  final bool isSelected;
  final VoidCallback onTap;

  String get _displayName => switch (locale.languageCode) {
    'en' => 'English',
    'bn' => 'বাংলা',
    _ => locale.languageCode,
  };

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 99,
        decoration: BoxDecoration(
          color: AppColors.neutral50,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: isSelected ? AppColors.primary500 : AppColors.neutral200,
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            _displayName,
            style: AppTextStyles.titleXL.copyWith(
              fontSize: 18,
              color: isSelected
                  ? AppColors.primary500
                  : AppColors.blackFontPrimary,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
