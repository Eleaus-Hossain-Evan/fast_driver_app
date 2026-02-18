import 'package:fast_driver_app/core/theme/index.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary50,
      body: Center(child: Assets.logos.appLogo.image()),
    );
  }
}
