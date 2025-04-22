import 'package:flutter/material.dart';

/// Padding enum
enum PaddingEnum {
  /// small padding
  small(15),

  /// medium padding
  medium(20),

  /// large padding
  large(25),

  /// extra large padding
  xLarge(30);

  const PaddingEnum(this.value);

  /// value
  final double value;

  /// all
  EdgeInsetsGeometry get all => EdgeInsets.all(value);

  /// symmetric
  EdgeInsets get symmetric =>
      EdgeInsets.symmetric(horizontal: value, vertical: value);

  /// horizontal
  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: value);

  /// only padding
  EdgeInsets get onlyPadding =>
      EdgeInsets.only(left: value, right: value, top: value, bottom: value);
}
