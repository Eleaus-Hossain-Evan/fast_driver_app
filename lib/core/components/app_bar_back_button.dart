import 'package:fast_driver_app/core/core.dart';
import 'package:flutter/material.dart';

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.maybePop(context),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.arrow_back,
            size: 20,
            color: AppColors.blackFontPrimary,
          ),
          AppSpace.h2,
          Text(
            'Back',
            style: AppTextStyles.bodyMD.copyWith(
              color: AppColors.blackFontPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
