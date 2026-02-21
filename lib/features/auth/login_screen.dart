import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/core.dart';
import '../../gen/assets.gen.dart';
import '../../gen/ui_icons.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Controllers and focus nodes
    final phoneOrEmailController = useTextEditingController();
    final inputFocusNode = useFocusNode();
    final passwordController = useTextEditingController();

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

            SizedBox(height: 16.h),

            // Password field
            TitleTextFormField(
              controller: passwordController,
              title: 'Password',
              hintText: 'Enter password',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              keyboardType: TextInputType.visiblePassword,
            ),

            AppSpace.v1,
            Align(
              alignment: Alignment.centerRight,
              child: CustomButton.textButton(
                text: 'Recover Password',
                onPressed: () {},
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            AppSpace.v3,
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
          ],
        ),
      ),
    );
  }
}
