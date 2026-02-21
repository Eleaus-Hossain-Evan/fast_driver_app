import 'package:fast_driver_app/core/core.dart';
import 'package:fast_driver_app/core/components/country_phone_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'auth_toggle_tabs.dart';

class AuthTypeSwitcher extends HookWidget {
  const AuthTypeSwitcher({
    super.key,
    required this.phoneOrEmailController,
    required this.inputFocusNode,
  });

  final TextEditingController phoneOrEmailController;
  final FocusNode inputFocusNode;

  @override
  Widget build(BuildContext context) {
    // UI state
    final selectedInputType = useState(AuthInputType.phone);

    return Column(
      children: [
        AuthToggleTabs(
          onTabChanged: (type) => selectedInputType.value = type,
          initialTab: selectedInputType.value,
        ),

        SizedBox(height: 24.h),

        // Input field (Phone or Email)
        AnimatedCrossFade(
          alignment: Alignment.bottomLeft,
          firstChild: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                'Phone',
                color: AppColors.blackFontSecondary,
                fontWeight: FontWeight.normal,
                fontSize: 16.sp,
              ),
              12.verticalSpace,
              CountryPhoneInputField(
                controller: phoneOrEmailController,
                focusNode: inputFocusNode,
                hintText: 'Enter phone number',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Phone number is required';
                  }
                  if (value.length < 8) {
                    return 'Please enter a valid phone number';
                  }
                  return null;
                },
                onCountryChanged: (countryCode) {
                  debugPrint(
                    'Selected country: ${countryCode.name} (${countryCode.dialCode})',
                  );
                },
              ),
            ],
          ),
          secondChild: TitleTextFormField(
            controller: phoneOrEmailController,
            title: 'Email',
            hintText: 'Enter email',
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              }
              if (!RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              ).hasMatch(value)) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          crossFadeState: selectedInputType.value == AuthInputType.phone
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 300),
        ),
      ],
    );
  }
}
