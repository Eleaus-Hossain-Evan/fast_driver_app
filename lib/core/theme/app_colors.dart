import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // ─── Base ───────────────────────────────────────────────
  static const Color white = Color(0xFFFFFFFF);
  static const Color white50 = Color(0xFFF9F9F9);
  static const Color black = Color(0xFF1C2130);
  static const Color blackBack = Color(0xFF0E1116);
  static const Color blackFontPrimary = Color(0xFF22262A);
  static const Color blackFontSecondary = Color(0xFF363B47);

  // ─── Layout ─────────────────────────────────────────────
  static const Color foreground = Color(0xFF11181C);
  static const Color sectionColor = Color(0xFFFFF8F6);
  static const Color adminBg = Color(0xFFF5F7FA);
  static const Color bgColor = Color(0xFFFAFFFB);

  // ─── Primary ────────────────────────────────────────────
  static const Color primary50 = Color(0xFFFEE8E7);
  static const Color primary100 = Color(0xFFFDD6D3);
  static const Color primary200 = Color(0xFFFBADA8);
  static const Color primary300 = Color(0xFFF8847C);
  static const Color primary400 = Color(0xFFF65B50);
  static const Color primary500 = Color(0xFFF43023);
  static const Color primary600 = Color(0xFFD6180B);
  static const Color primary700 = Color(0xFFA01208);
  static const Color primary800 = Color(0xFF6B0C05);
  static const Color primary900 = Color(0xFF350603);
  static const Color primary950 = Color(0xFF180301);

  static const MaterialColor primary = MaterialColor(0xFFF43023, <int, Color>{
    50: primary50,
    100: primary100,
    200: primary200,
    300: primary300,
    400: primary400,
    500: primary500,
    600: primary600,
    700: primary700,
    800: primary800,
    900: primary900,
  });

  // ─── Secondary ──────────────────────────────────────────
  static const Color secondary50 = Color(0xFFE6F0FF);
  static const Color secondary100 = Color(0xFFCCE0FF);
  static const Color secondary200 = Color(0xFF9FC5FE);
  static const Color secondary300 = Color(0xFF6CA6FE);
  static const Color secondary400 = Color(0xFF3F8BFD);
  static const Color secondary500 = Color(0xFF0D6EFD);
  static const Color secondary600 = Color(0xFF0256D4);
  static const Color secondary700 = Color(0xFF013F9D);
  static const Color secondary800 = Color(0xFF012B6A);
  static const Color secondary900 = Color(0xFF001433);
  static const Color secondary950 = Color(0xFF000A19);

  static const MaterialColor secondary = MaterialColor(0xFF0D6EFD, <int, Color>{
    50: secondary50,
    100: secondary100,
    200: secondary200,
    300: secondary300,
    400: secondary400,
    500: secondary500,
    600: secondary600,
    700: secondary700,
    800: secondary800,
    900: secondary900,
  });

  // ─── Neutral ────────────────────────────────────────────
  static const Color neutral50 = Color(0xFFF7F8F8);
  static const Color neutral100 = Color(0xFFE6E6E9);
  static const Color neutral200 = Color(0xFFD4D5D9);
  static const Color neutral300 = Color(0xFFBFC1C7);
  static const Color neutral400 = Color(0xFFADB0B7);
  static const Color neutral500 = Color(0xFF8C8F9A);
  static const Color neutral600 = Color(0xFF666A79);
  static const Color neutral700 = Color(0xFF404557);
  static const Color neutral800 = Color(0xFF33394C);
  static const Color neutral900 = Color(0xFF1A2035);
  static const Color neutral950 = Color(0xFF00071F);

  static const MaterialColor neutral = MaterialColor(0xFF8C8F9A, <int, Color>{
    50: neutral50,
    100: neutral100,
    200: neutral200,
    300: neutral300,
    400: neutral400,
    500: neutral500,
    600: neutral600,
    700: neutral700,
    800: neutral800,
    900: neutral900,
  });

  // ─── Positive ───────────────────────────────────────────
  static const Color positive50 = Color(0xFFE6FAEE);
  static const Color positive100 = Color(0xFFD0F5E1);
  static const Color positive200 = Color(0xFFA2ECC2);
  static const Color positive300 = Color(0xFF73E2A4);
  static const Color positive400 = Color(0xFF45D985);
  static const Color positive500 = Color(0xFF27BE69);
  static const Color positive600 = Color(0xFF1F9854);
  static const Color positive700 = Color(0xFF17723F);
  static const Color positive800 = Color(0xFF104C2A);
  static const Color positive900 = Color(0xFF082615);
  static const Color positive950 = Color(0xFF031109);

  static const MaterialColor positive = MaterialColor(0xFF27BE69, <int, Color>{
    50: positive50,
    100: positive100,
    200: positive200,
    300: positive300,
    400: positive400,
    500: positive500,
    600: positive600,
    700: positive700,
    800: positive800,
    900: positive900,
  });

  // ─── Negative ───────────────────────────────────────────
  static const Color negative50 = Color(0xFFFEE9EE);
  static const Color negative100 = Color(0xFFFDD2DB);
  static const Color negative200 = Color(0xFFFAA2B5);
  static const Color negative300 = Color(0xFFF87A95);
  static const Color negative400 = Color(0xFFF65475);
  static const Color negative500 = Color(0xFFF5355F);
  static const Color negative600 = Color(0xFFE00E33);
  static const Color negative700 = Color(0xFFA00C26);
  static const Color negative800 = Color(0xFF650A1B);
  static const Color negative900 = Color(0xFF330711);
  static const Color negative950 = Color(0xFF1B040B);

  static const MaterialColor negative = MaterialColor(0xFFF5355F, <int, Color>{
    50: negative50,
    100: negative100,
    200: negative200,
    300: negative300,
    400: negative400,
    500: negative500,
    600: negative600,
    700: negative700,
    800: negative800,
    900: negative900,
  });

  // ─── Orange (Warning) ──────────────────────────────────
  static const Color orange50 = Color(0xFFFFF6E5);
  static const Color orange100 = Color(0xFFFFEDCC);
  static const Color orange200 = Color(0xFFFFDB99);
  static const Color orange300 = Color(0xFFFFE066);
  static const Color orange400 = Color(0xFFFFB833);
  static const Color orange500 = Color(0xFFFFA500);
  static const Color orange600 = Color(0xFFCC8500);
  static const Color orange700 = Color(0xFF996300);
  static const Color orange800 = Color(0xFF664200);
  static const Color orange900 = Color(0xFF332100);
  static const Color orange950 = Color(0xFF191100);

  static const MaterialColor orange = MaterialColor(0xFFFFA500, <int, Color>{
    50: orange50,
    100: orange100,
    200: orange200,
    300: orange300,
    400: orange400,
    500: orange500,
    600: orange600,
    700: orange700,
    800: orange800,
    900: orange900,
  });

  // ─── Info ───────────────────────────────────────────────
  static const Color info50 = Color(0xFFEBEFFF);
  static const Color info100 = Color(0xFFD6E0FF);
  static const Color info200 = Color(0xFFA8BDFF);
  static const Color info300 = Color(0xFF809DFF);
  static const Color info400 = Color(0xFF527AFF);
  static const Color info500 = Color(0xFF295BFF);
  static const Color info600 = Color(0xFF0037EB);
  static const Color info700 = Color(0xFF002AB3);
  static const Color info800 = Color(0xFF001B75);
  static const Color info900 = Color(0xFF000E3D);
  static const Color info950 = Color(0xFF00071F);

  static const MaterialColor info = MaterialColor(0xFF295BFF, <int, Color>{
    50: info50,
    100: info100,
    200: info200,
    300: info300,
    400: info400,
    500: info500,
    600: info600,
    700: info700,
    800: info800,
    900: info900,
  });
}
