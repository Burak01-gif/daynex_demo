import 'package:flutter/material.dart';

/// Context Extension
extension ContextExtension on BuildContext {
  /// Theme data
  ThemeData get theme => Theme.of(this);

  /// height
  double get height => MediaQuery.sizeOf(this).height;

  /// width
  double get width => MediaQuery.sizeOf(this).width;

  /// 428
  ///Double Width sizes
  double get xsmallWidth => width * 0.02;

  /// 4
  double get xsmallWidth4 => width * 0.009;

  /// 8
  double get width8 => width * 0.018;

  /// 12
  double get width12 => width * 0.028;

  /// 16
  double get width16 => width * 0.037;

  /// 20
  double get width20 => width * 0.046;

  /// 24
  double get width24 => width * 0.056;

    /// 32
  double get width32 => width * 0.074;

  /// 40
  double get width40 => width * 0.093;

  /// 48
  double get width48 => width * 0.112;

  /// 56
  double get width56 => width * 0.13;

  /// 64
  double get width64 => width * 0.149;

  /// 72
  double get width72 => width * 0.168;

  /// 80
  double get width80 => width * 0.186;

  /// 100 (yaklaşık %23)
  double get width100 => width * 0.233;

  /// 926

  ///Double Height sizes
  double get xsmallHeight => height * 0.02;

  /// 4
  double get xsmallHeight4 => height * 0.004;

  /// 8
  double get height8 => height * 0.008;

  /// 12
  double get height12 => height * 0.012;

  /// 16
  double get height16 => height * 0.017;

  /// 20
  double get height20 => height * 0.021;

  /// 24
  double get height24 => height * 0.025;

  /// 24
  double get height36 => height * 0.038;
  T byOrientation<T>({required T portrait, required T landscape}) {
    return MediaQuery.orientationOf(this) == Orientation.portrait
        ? portrait
        : landscape;
  }

  T byScreenOrientation<T>({required T portrait, required T landscape}) {
    return width < height ? portrait : landscape;
  }
}
