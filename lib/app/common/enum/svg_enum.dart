import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum SvgEnum {
  arrowLeft('arrow_left');

  const SvgEnum(this.value);

  final String value;

  String get svgPath => 'assets/svg/$value.svg';
}

extension SvgEnumX on SvgEnum {
  SvgPicture svgWidget({
    double? height,
    double? width,
    Color? color,
  }) =>
      SvgPicture.asset(
        svgPath,
        height: height,
        width: width,
        colorFilter:
            color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
        fit: BoxFit.contain,
      );
}
