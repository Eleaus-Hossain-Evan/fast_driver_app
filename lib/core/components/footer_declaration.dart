import 'package:fast_driver_app/core/core.dart';
import 'package:flutter/material.dart';

class FooterDeclaration extends StatelessWidget {
  const FooterDeclaration({
    super.key,
    this.brightness = Brightness.light,
  });

  final Brightness brightness;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 28,
          ).copyWith(
            bottom: MediaQuery.viewPaddingOf(context).bottom + AppSpace.space2,
          ),
      child: Text(
        'Powered By SafeCare24/7 Medical Services Limited Beta Version 1.0',
        style: AppTextStyles.caption.copyWith(
          color: brightness == Brightness.dark
              ? AppColors.white
              : AppColors.blackFontPrimary,
          letterSpacing: 0.2,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
