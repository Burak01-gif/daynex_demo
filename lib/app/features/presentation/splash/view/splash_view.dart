import 'package:auto_route/auto_route.dart';
import 'package:daynex_demo/app/common/constants/app_colors.dart';
import 'package:daynex_demo/app/features/presentation/splash/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: SplashBody(),
    );
  }
}
