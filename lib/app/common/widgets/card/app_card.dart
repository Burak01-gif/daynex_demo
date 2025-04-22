import 'package:daynex_demo/app/common/constants/app_colors.dart';

import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.backgroundColor = AppColors.white,
    this.borderColor = AppColors.lavenderGray,
    this.padding = const EdgeInsets.all(8.0),
    this.borderRadius = 12,
    this.borderWidth = 0.5,
    this.width,
    this.height,
    this.clip = Clip.none,
  });

  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final double borderWidth;
  final double? width;
  final double? height;
  final Clip clip;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      clipBehavior: clip,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: child,
    );
  }
}
