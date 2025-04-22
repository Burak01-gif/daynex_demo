import 'package:daynex_demo/app/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
    this.indent,
    this.endIndent,
    this.thickness,
    this.height,
  });

  final double? indent;
  final double? endIndent;
  final double? thickness;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.lavenderGray,
      indent: indent,
      endIndent: endIndent,
      thickness: thickness ?? 1,
      height: height ?? 1,
    );
  }
}
