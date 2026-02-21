import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/core.dart';

class AppButton extends HookConsumerWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.color,
    this.textColor,
    this.disabledTextColor,
    this.loading,
    this.height,
    this.minWidth,
    this.borderRadius,
    this.side = BorderSide.none,
    this.shape,
    this.textTheme,
    this.focusNode,
    this.padding,
    this.elevation,
    this.disabledElevation,
    this.focusElevation,
    this.highlightElevation,
    this.hoverElevation,
    this.textStyle,
  });

  final Color? color, textColor, disabledTextColor;
  final VoidCallback? onPressed;
  final bool? loading;
  final Widget? child;
  final double? height,
      minWidth,
      elevation,
      focusElevation,
      hoverElevation,
      disabledElevation,
      highlightElevation;
  final ShapeBorder? shape;
  final BorderRadiusGeometry? borderRadius;
  final BorderSide side;
  final ButtonTextTheme? textTheme;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialButton(
      onPressed: onPressed,
      height: height,
      minWidth: minWidth,
      elevation: elevation,
      focusElevation: focusElevation,
      hoverElevation: hoverElevation,
      disabledElevation: disabledElevation,
      highlightElevation: highlightElevation,
      color: color,
      textColor: textColor,
      disabledTextColor: disabledTextColor,
      textTheme: textTheme,
      shape:
          shape ??
          RoundedRectangleBorder(
            borderRadius: borderRadius ?? AppTheme.kButtonBorderRadius,
            side: side,
          ),
      focusNode: focusNode,
      padding: padding,
      child: (loading != null && loading!)
          ? SizedBox(
              height: 24,
              width: 23,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation<Color>(
                  textColor ?? Theme.of(context).colorScheme.secondary,
                ),
              ),
            )
          : child,
    );
  }

  factory AppButton.filled({
    required void Function()? onPressed,
    String text = '',
    bool? loading,
    Widget? child,
    BorderRadius? borderRadius,
    double? width,
    double? height,
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
    Color? color,
    Color? textColor,
    Widget? icon,
  }) {
    final finalTextStyle =
        textStyle ??
        AppTextStyles.bodyLG.copyWith(color: textColor ?? AppColors.white);

    Widget content =
        child ??
        Text(
          text,
          style: finalTextStyle,
        );
    if (icon != null) {
      content = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          content,
          AppSpace.h2,
          icon,
        ],
      );
    }
    return AppButton(
      onPressed: onPressed,
      color: color ?? AppColors.primary,
      textColor: textColor ?? AppColors.white,
      disabledTextColor: AppColors.neutral,
      loading: loading,
      minWidth: width ?? double.infinity,
      height: height ?? 44,
      textStyle: finalTextStyle,
      borderRadius: borderRadius,
      disabledElevation: 4,
      elevation: 4,
      padding: padding ?? EdgeInsets.zero,
      child: content,
    );
  }

  factory AppButton.filledSecondary({
    required void Function()? onPressed,
    String text = '',
    bool? loading,
    TextStyle? textStyle,
  }) {
    final finalTextStyle =
        textStyle ??
        AppTextStyles.bodyLG.copyWith(color: AppColors.blackFontSecondary);
    return AppButton(
      onPressed: onPressed,
      color: AppColors.neutral100,
      textColor: AppColors.blackFontSecondary,
      loading: loading,
      textStyle: finalTextStyle,
      child: Text(
        text,
        style: finalTextStyle,
      ),
    );
  }
}
