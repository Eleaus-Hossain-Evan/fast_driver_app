import 'package:flutter/material.dart';

abstract class AppTextStyles {
  AppTextStyles._();

  // Base font family
  static const String fontFamily = 'Inter';

  // ─── Display ────────────────────────────────────────────
  /// Display XL - 72px/88px - Bold
  static const TextStyle displayXL = TextStyle(
    fontFamily: fontFamily,
    fontSize: 72,
    height: 1.22, // 88/72
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
  );

  /// Display L - 60px/72px - Bold
  static const TextStyle displayL = TextStyle(
    fontFamily: fontFamily,
    fontSize: 60,
    height: 1.2, // 72/60
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
  );

  /// Display M - 48px/56px - Bold
  static const TextStyle displayM = TextStyle(
    fontFamily: fontFamily,
    fontSize: 48,
    height: 1.17, // 56/48
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
  );

  /// Display S - 36px/44px - Bold
  static const TextStyle displayS = TextStyle(
    fontFamily: fontFamily,
    fontSize: 36,
    height: 1.22, // 44/36
    fontWeight: FontWeight.w700,
    letterSpacing: -0.25,
  );

  // ─── Headings ───────────────────────────────────────────
  /// Heading 1 - 32px/40px - Bold
  static const TextStyle h1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    height: 1.25, // 40/32
    fontWeight: FontWeight.w700,
    letterSpacing: -0.25,
  );

  /// Heading 2 - 28px/36px - SemiBold
  static const TextStyle h2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 28,
    height: 1.29, // 36/28
    fontWeight: FontWeight.w600,
    letterSpacing: -0.25,
  );

  /// Heading 3 - 24px/32px - SemiBold
  static const TextStyle h3 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    height: 1.33, // 32/24
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  /// Heading 4 - 20px/28px - SemiBold
  static const TextStyle h4 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    height: 1.4, // 28/20
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  /// Heading 5 - 18px/24px - SemiBold
  static const TextStyle h5 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    height: 1.33, // 24/18
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  /// Heading 6 - 16px/24px - SemiBold
  static const TextStyle h6 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    height: 1.5, // 24/16
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  // ─── Body ───────────────────────────────────────────────
  /// Body XL - 18px/28px - Regular
  static const TextStyle bodyXL = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    height: 1.56, // 28/18
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  /// Body XL Medium - 18px/28px - Medium
  static const TextStyle bodyXLMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    height: 1.56, // 28/18
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );

  /// Body XL SemiBold - 18px/28px - SemiBold
  static const TextStyle bodyXLSemiBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    height: 1.56, // 28/18
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  /// Body L - 16px/24px - Regular
  static const TextStyle bodyL = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    height: 1.5, // 24/16
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  /// Body L Medium - 16px/24px - Medium
  static const TextStyle bodyLMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    height: 1.5, // 24/16
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );

  /// Body L SemiBold - 16px/24px - SemiBold
  static const TextStyle bodyLSemiBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    height: 1.5, // 24/16
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  /// Body M - 14px/20px - Regular
  static const TextStyle bodyM = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    height: 1.43, // 20/14
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  /// Body M Medium - 14px/20px - Medium
  static const TextStyle bodyMMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    height: 1.43, // 20/14
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );

  /// Body M SemiBold - 14px/20px - SemiBold
  static const TextStyle bodyMSemiBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    height: 1.43, // 20/14
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  /// Body S - 12px/16px - Regular
  static const TextStyle bodyS = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    height: 1.33, // 16/12
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  /// Body S Medium - 12px/16px - Medium
  static const TextStyle bodySMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    height: 1.33, // 16/12
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );

  /// Body S SemiBold - 12px/16px - SemiBold
  static const TextStyle bodySSemiBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    height: 1.33, // 16/12
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  // ─── Caption ────────────────────────────────────────────
  /// Caption - 11px/16px - Regular
  static const TextStyle caption = TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    height: 1.45, // 16/11
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
  );

  /// Caption Medium - 11px/16px - Medium
  static const TextStyle captionMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    height: 1.45, // 16/11
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  );

  /// Caption SemiBold - 11px/16px - SemiBold
  static const TextStyle captionSemiBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    height: 1.45, // 16/11
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
  );

  // ─── Label ──────────────────────────────────────────────
  /// Label L - 14px/20px - Medium
  static const TextStyle labelL = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    height: 1.43, // 20/14
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );

  /// Label M - 12px/16px - Medium
  static const TextStyle labelM = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    height: 1.33, // 16/12
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );

  /// Label S - 11px/16px - Medium
  static const TextStyle labelS = TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    height: 1.45, // 16/11
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );

  // ─── Button ─────────────────────────────────────────────
  /// Button L - 16px/24px - SemiBold
  static const TextStyle buttonL = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    height: 1.5, // 24/16
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
  );

  /// Button M - 14px/20px - SemiBold
  static const TextStyle buttonM = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    height: 1.43, // 20/14
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
  );

  /// Button S - 12px/16px - SemiBold
  static const TextStyle buttonS = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    height: 1.33, // 16/12
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
  );

  // ─── Link ───────────────────────────────────────────────
  /// Link - 14px/20px - Medium with underline
  static const TextStyle link = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    height: 1.43, // 20/14
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
    letterSpacing: 0,
  );

  /// Link S - 12px/16px - Medium with underline
  static const TextStyle linkS = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    height: 1.33, // 16/12
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
    letterSpacing: 0,
  );
}
