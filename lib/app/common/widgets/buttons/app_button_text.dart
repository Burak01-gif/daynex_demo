import 'package:daynex_demo/app/common/constants/app_colors.dart';
import 'package:daynex_demo/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

final class AppButtonTextWidget extends StatelessWidget {
  /// Button Text Constractor
  const AppButtonTextWidget({
    required this.text,
    this.textColor,
    super.key,
  });

  /// Button Title text
  final String text;

  /// Text Color
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.theme.textTheme.titleMedium?.copyWith(
        color: textColor ?? AppColors.white,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }
}
