import 'package:daynex_demo/app/common/constants/app_colors.dart';
import 'package:daynex_demo/app/common/widgets/buttons/app_button_text.dart';
import 'package:daynex_demo/app/common/widgets/burak/app_burak.dart';
import 'package:flutter/material.dart';

final class AppButton extends StatelessWidget {
  /// App Button Constructor
  const AppButton({
    required this.onPressed,
    required this.widget,
    this.backgroundColor,
    this.overlay,
    this.style,
    this.minimumSize,
    super.key,
  });

  /// Icon Button
  factory AppButton.withIcon({
    required VoidCallback? onPressed,
    required Widget iconWidget,
    required String text,
    Size? minimumSize,
    Color? backgroundColor,
  }) {
    return AppButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      minimumSize: minimumSize,
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconWidget,
          const Burak(5),
          AppButtonTextWidget(text: text),
        ],
      ),
    );
  }

  /// border button
  factory AppButton.border({
    required VoidCallback? onPressed,
    required String text,
    Size? minimumSize,
    Color? backgroundColor,
    Color? textColor,
    Color? borderColor,
    Color? overlayColor,
  }) {
    return AppButton(
      onPressed: onPressed,
      widget: AppButtonTextWidget(
        text: text,
        textColor: textColor ?? AppColors.primaryGreen,
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: minimumSize ?? const Size(double.infinity, 50),
        backgroundColor: backgroundColor ?? AppColors.lightGreen,
        overlayColor: overlayColor ?? AppColors.borderGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: borderColor ?? AppColors.borderGreen),
        ),
      ),
    );
  }

  /// Border with icon
  factory AppButton.borderWithIcon({
    required VoidCallback? onPressed,
    required String text,
    Size? minimumSize,
    Color? backgroundColor,
    Widget? icon,
    MainAxisAlignment? alignment,
    Color? borderColor,
    Color? textColor,
    Widget? suffixIcon,
  }) {
    return AppButton(
      onPressed: onPressed,
      widget: Row(
        mainAxisAlignment: alignment ?? MainAxisAlignment.center,
        children: [
          icon ?? const Icon(Icons.add, color: AppColors.primaryGreen),
          const Burak(5),
          AppButtonTextWidget(
            text: text,
            textColor: textColor ?? AppColors.primaryGreen,
          ),
          if (suffixIcon != null) ...[const Burak(5), suffixIcon]
        ],
      ),
      style: ElevatedButton.styleFrom(
        overlayColor: AppColors.borderGreen,
        minimumSize: minimumSize ?? const Size(double.infinity, 50),
        backgroundColor: backgroundColor ?? AppColors.lightGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: borderColor ?? AppColors.borderGreen),
        ),
      ),
    );
  }

  /// Floating action button
  factory AppButton.floating({
    required VoidCallback? onPressed,
    Color? backgroundColor,
    Widget? icon,
    double? size = 64.0,
    String? tooltip,
    double? elevation,
  }) {
    return AppButton(
      onPressed: onPressed,
      widget: icon ??
          const Icon(
            Icons.add,
            color: AppColors.white,
          ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: backgroundColor ?? AppColors.primaryGreen,
        minimumSize: Size(size!, size),
        shape: const CircleBorder(),
        elevation: elevation ?? 6.0,
      ),
    );
  }

  /// Button Text Widget
  final Widget widget;

  /// onPressed
  final VoidCallback? onPressed;

  /// Background Color
  final Color? backgroundColor;

  /// overlay color
  final Color? overlay;

  /// button style
  final ButtonStyle? style;

  /// minimum size override
  final Size? minimumSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style ??
          ElevatedButton.styleFrom(
            overlayColor: AppColors.white,
            disabledBackgroundColor: AppColors.lightGreen,
            minimumSize: minimumSize ?? const Size(double.infinity, 50),
            backgroundColor: backgroundColor ?? AppColors.primaryGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
      onPressed: onPressed,
      child: widget,
    );
  }
}
