import 'package:daynex_demo/app/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class AnimatedCircularProgressIndicator extends StatefulWidget {
  final double strokeWidth;
  final double size;

  const AnimatedCircularProgressIndicator({
    super.key,
    this.strokeWidth = 8.0,
    this.size = 100.0,
  });

  @override
  State<AnimatedCircularProgressIndicator> createState() =>
      _AnimatedCircularProgressIndicatorState();
}

class _AnimatedCircularProgressIndicatorState
    extends State<AnimatedCircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // Dönme süresi
    )..repeat(); // Sürekli tekrar et
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          size: Size(widget.size, widget.size),
          painter: CircleProgressPainter(_animation.value, widget.strokeWidth),
        );
      },
    );
  }
}

class CircleProgressPainter extends CustomPainter {
  final double animationValue; // 0.0 ile 1.0 arasında animasyon değeri
  final double strokeWidth;

  CircleProgressPainter(this.animationValue, this.strokeWidth);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 3;

    // İlerleme çemberi (gradient ile yeşil)
    final progressPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..shader = const LinearGradient(
        colors: [
          AppColors.lightGreen,
          AppColors.primaryGreen,
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromCircle(center: center, radius: radius));

    // Sürekli dönen çember için arc çizimi
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -0.5 * math.pi +
          (2 * math.pi * animationValue), // Animasyonla açı değiştir
      1.5 * math.pi, // Çemberin yaklaşık 3/4'ünü kaplasın (görseldeki gibi)
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Animasyon her karede yeniden çizilsin
  }
}
