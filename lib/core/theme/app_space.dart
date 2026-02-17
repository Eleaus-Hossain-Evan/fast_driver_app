import 'package:flutter/material.dart';

abstract class AppSpace {
  AppSpace._();

  // ─── Spacing Scale ──────────────────────────────────────
  /// 0px - No space
  static const double space0 = 0.0;

  /// 4px - Extra tight spacing
  static const double space1 = 4.0;

  /// 8px - Tight spacing
  static const double space2 = 8.0;

  /// 12px - Small spacing
  static const double space3 = 12.0;

  /// 16px - Base spacing
  static const double space4 = 16.0;

  /// 20px - Medium spacing
  static const double space5 = 20.0;

  /// 24px - Medium-large spacing
  static const double space6 = 24.0;

  /// 28px - Large spacing
  static const double space7 = 28.0;

  /// 32px - Extra large spacing
  static const double space8 = 32.0;

  /// 36px - Extra extra large spacing
  static const double space9 = 36.0;

  /// 40px - Huge spacing
  static const double space10 = 40.0;

  /// 44px - Extra huge spacing
  static const double space11 = 44.0;

  /// 48px - Massive spacing
  static const double space12 = 48.0;

  /// 56px - Extra massive spacing
  static const double space13 = 56.0;

  /// 60px - Section spacing
  static const double space14 = 60.0;

  /// 64px - Large section spacing
  static const double space15 = 64.0;

  /// 68px - Extra large section spacing
  static const double space16 = 68.0;

  /// 80px - Page section spacing
  static const double space17 = 80.0;

  /// 96px - Extra page section spacing
  static const double space18 = 96.0;

  // ─── SizedBox Helpers ───────────────────────────────────
  /// Vertical spacing with height
  static Widget vertical(double height) => SizedBox(height: height);

  /// Horizontal spacing with width
  static Widget horizontal(double width) => SizedBox(width: width);

  // ─── Vertical Spacing Widgets ───────────────────────────
  static const Widget v0 = SizedBox(height: space0);
  static const Widget v1 = SizedBox(height: space1);
  static const Widget v2 = SizedBox(height: space2);
  static const Widget v3 = SizedBox(height: space3);
  static const Widget v4 = SizedBox(height: space4);
  static const Widget v5 = SizedBox(height: space5);
  static const Widget v6 = SizedBox(height: space6);
  static const Widget v7 = SizedBox(height: space7);
  static const Widget v8 = SizedBox(height: space8);
  static const Widget v9 = SizedBox(height: space9);
  static const Widget v10 = SizedBox(height: space10);
  static const Widget v11 = SizedBox(height: space11);
  static const Widget v12 = SizedBox(height: space12);
  static const Widget v13 = SizedBox(height: space13);
  static const Widget v14 = SizedBox(height: space14);
  static const Widget v15 = SizedBox(height: space15);
  static const Widget v16 = SizedBox(height: space16);
  static const Widget v17 = SizedBox(height: space17);
  static const Widget v18 = SizedBox(height: space18);

  // ─── Horizontal Spacing Widgets ─────────────────────────
  static const Widget h0 = SizedBox(width: space0);
  static const Widget h1 = SizedBox(width: space1);
  static const Widget h2 = SizedBox(width: space2);
  static const Widget h3 = SizedBox(width: space3);
  static const Widget h4 = SizedBox(width: space4);
  static const Widget h5 = SizedBox(width: space5);
  static const Widget h6 = SizedBox(width: space6);
  static const Widget h7 = SizedBox(width: space7);
  static const Widget h8 = SizedBox(width: space8);
  static const Widget h9 = SizedBox(width: space9);
  static const Widget h10 = SizedBox(width: space10);
  static const Widget h11 = SizedBox(width: space11);
  static const Widget h12 = SizedBox(width: space12);
  static const Widget h13 = SizedBox(width: space13);
  static const Widget h14 = SizedBox(width: space14);
  static const Widget h15 = SizedBox(width: space15);
  static const Widget h16 = SizedBox(width: space16);
  static const Widget h17 = SizedBox(width: space17);
  static const Widget h18 = SizedBox(width: space18);

  // ─── EdgeInsets Helpers ─────────────────────────────────
  /// All sides padding
  static EdgeInsets all(double value) => EdgeInsets.all(value);

  /// Symmetric padding
  static EdgeInsets symmetric({double horizontal = 0, double vertical = 0}) =>
      EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);

  /// Only specific sides padding
  static EdgeInsets only({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) => EdgeInsets.only(left: left, top: top, right: right, bottom: bottom);

  // ─── Common Padding Presets ─────────────────────────────
  /// Padding all space4 (16px)
  static const EdgeInsets pagePadding = EdgeInsets.all(space4);

  /// Padding all space6 (24px)
  static const EdgeInsets sectionPadding = EdgeInsets.all(space6);

  /// Padding all space2 (8px)
  static const EdgeInsets cardPadding = EdgeInsets.all(space2);

  /// Horizontal padding space4 (16px)
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(
    horizontal: space4,
  );

  /// Vertical padding space4 (16px)
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(
    vertical: space4,
  );

  /// Horizontal padding space6 (24px)
  static const EdgeInsets horizontalPaddingLarge = EdgeInsets.symmetric(
    horizontal: space6,
  );

  /// Vertical padding space6 (24px)
  static const EdgeInsets verticalPaddingLarge = EdgeInsets.symmetric(
    vertical: space6,
  );
}
