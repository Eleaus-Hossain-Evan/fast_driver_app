import 'package:fast_driver_app/core/theme/index.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../luncher/luncher_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the next screen (e.g., HomeScreen)
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LauncherScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary50,
      body: Center(
        child: Assets.logos.appLogo.image(
          width: 280,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
