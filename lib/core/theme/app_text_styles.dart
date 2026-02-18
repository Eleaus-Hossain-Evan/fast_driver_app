import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  AppTextStyles._();

  // ─── Headings ───────────────────────────────────────────
  /// Heading XL - 80px/96px - Bold
  static TextStyle headingXL = GoogleFonts.poppins(
    fontSize: 80,
    height: 1.2, // 120%
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
  );

  /// Heading LG - 48px/72px - Bold
  static TextStyle headingLG = GoogleFonts.poppins(
    fontSize: 48,
    height: 1.5, // 150%
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
  );

  /// Heading MD - 34px/51px - Bold
  static TextStyle headingMD = GoogleFonts.poppins(
    fontSize: 34,
    height: 1.5, // 150%
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
  );

  // ─── Title ──────────────────────────────────────────────
  /// Title XL - 24px/36px - Bold
  static TextStyle titleXL = GoogleFonts.poppins(
    fontSize: 24,
    height: 1.5, // 150%
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
  );

  /// Title LG - 20px/30px - Bold
  static TextStyle titleLG = GoogleFonts.poppins(
    fontSize: 20,
    height: 1.5, // 150%
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
  );

  // ─── Body ───────────────────────────────────────────────
  /// Body XL - 16px/24px - Regular
  static TextStyle bodyXL = GoogleFonts.poppins(
    fontSize: 16,
    height: 1.5, // 150%
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  /// Body LG - 16px/24px - Regular
  static TextStyle bodyLG = GoogleFonts.poppins(
    fontSize: 16,
    height: 1.5, // 150%
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  /// Body MD - 14px/22.4px - Regular
  static TextStyle bodyMD = GoogleFonts.poppins(
    fontSize: 14,
    height: 1.6, // 160%
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  /// Body SM - 12px/18px - Regular
  static TextStyle bodySM = GoogleFonts.poppins(
    fontSize: 12,
    height: 1.5, // 150%
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  // ─── Caption ────────────────────────────────────────────
  /// Caption - 10px/15px - Regular
  static TextStyle caption = GoogleFonts.poppins(
    fontSize: 10,
    height: 1.5, // 150%
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );
}
