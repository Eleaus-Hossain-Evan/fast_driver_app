import 'package:fast_driver_app/gen/assets.gen.dart';
import 'package:fast_driver_app/gen/ui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/core.dart';

class RegistrationScreen extends HookConsumerWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Controllers and focus nodes
    final phoneOrEmailController = useTextEditingController();
    final inputFocusNode = useFocusNode();

    return Scaffold(
      appBar: AppBarWithOnlyBackButton(),
      body: SingleChildScrollView(
        padding: AppSpace.pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppSpace.v9,
            Assets.logos.appsLogo.svg(
              height: 70.h,
            ),
            AppSpace.v9,
            AppText.neutral700(
              'Welcome to AmbuFast',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
            AppSpace.v2,
            AppText.neutral600('Where Every Second Matters', fontSize: 12.sp),
            AppSpace.vertical(32.h),
            // Input type toggle tabs
            AuthTypeSwitcher(
              phoneOrEmailController: phoneOrEmailController,
              inputFocusNode: inputFocusNode,
            ),

            24.verticalSpace,
            CustomButton.primary(
              onPressed: () {
                // Handle registration logic here
              },
              text: 'Send OTP',
              trailingIcon: Icon(
                UIIcons.rightarrow,
                size: 24,
                color: AppColors.white,
              ),
            ),
            32.verticalSpace,
            AppText.neutral600(
              'Have a account? Login',
              fontSize: 12.sp,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: FooterDeclaration(brightness: Brightness.light),
    );
  }
}
