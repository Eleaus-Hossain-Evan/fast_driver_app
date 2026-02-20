import 'package:fast_driver_app/core/core.dart';
import 'package:fast_driver_app/features/luncher/widgets/local_selection_button.dart';
import 'package:fast_driver_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LuncherScreen extends ConsumerWidget {
  const LuncherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                      child: LocalSelectionButton(),
                    ),
                    AppSpace.vertical(134),
                    Text(
                      'Welcome to AmbuFast',
                      style: AppTextStyles.titleXL.bold.colorWhite(),
                    ),
                    AppSpace.v3,
                    Text(
                      'The Technology to Save Lives Fast',
                      style: AppTextStyles.bodyLG.colorWhite(),
                    ),
                    AppSpace.v12,
                    AppButton.filled(
                      onPressed: () {},
                      color: AppColors.primary50,
                      textColor: AppColors.primary,
                      text: 'Login',
                    ),
                    AppSpace.v4,
                    AppButton.filled(
                      onPressed: () {},
                      text: 'Create Account',
                    ),
                    Spacer(),
                    FooterDeclaration(
                      brightness: Brightness.dark,
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
