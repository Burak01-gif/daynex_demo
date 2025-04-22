import 'package:daynex_demo/app/features/presentation/home/widgets/route_buttons.widget.dart';
import 'package:daynex_demo/app/features/presentation/home/widgets/welcome_widget.dart';
import 'package:flutter/material.dart';

enum HomePageEnum {
  welcome,
  routeButtons,
}

extension HomePageEnumX on HomePageEnum {
  Widget get view {
    switch (this) {
      case HomePageEnum.welcome:
        return const WelcomeWidget();
      case HomePageEnum.routeButtons:
        return const RouteButtonsPage();
    }
  }

  static List<Widget> get allViews => HomePageEnum.values.map((e) => e.view).toList();
}
