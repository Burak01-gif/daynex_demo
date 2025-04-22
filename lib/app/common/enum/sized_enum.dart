import 'package:flutter/material.dart';

/// Sized Enum
enum SizedEnum {
  ///  small
  small(15),

  /// medium
  medium(20),

  /// large
  large(25),

  /// xLarge
  xLarge(30);

  const SizedEnum(this.value);

  /// value
  final double value;

  /// get all
  SizedBox get all => SizedBox(height: value, width: value);

  /// get onlyHeight
  SizedBox get onlyHeight => SizedBox(height: value);

  /// get onlyWidth
  SizedBox get onlyWidth => SizedBox(width: value);
}