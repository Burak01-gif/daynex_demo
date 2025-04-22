import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:daynex_demo/app/common/router/app_router.gr.dart';
import 'package:daynex_demo/core/assets/images.dart';
import 'package:daynex_demo/core/extension/context_extension.dart';
import 'package:daynex_demo/core/extension/padding_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashBody extends HookWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      final timer = Timer(const Duration(seconds: 2), () {
        context.router.replace(const HomeRoute());
      });

      return timer.cancel;
    }, const []);

    return Center(
      child: Image.asset(
        Images.instance.splashLogo,
        width: context.width * 0.5,
        height: context.height * 0.4,
        fit: BoxFit.contain,
      ),
    ).symmetricPadding(horizontal: context.width20);
  }
}
