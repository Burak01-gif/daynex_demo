import 'package:daynex_demo/app/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

part 'app_tabbar_data.dart';
part 'app_tabbar_tab.dart';

abstract interface class IAppTabbarEnum {
  String get displayValue;
}

class AppTabbar<T extends IAppTabbarEnum> extends StatelessWidget {
  const AppTabbar({
    super.key,
    required this.tabs,
    this.onTap,
    required this.selectedValue,
    this.hasBackground = true,
  });

  final T selectedValue;
  final List<AppTabbarData<T>> tabs;
  final void Function(T value)? onTap;
  final bool hasBackground;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      decoration: BoxDecoration(
        color: hasBackground ? AppColors.white : Colors.transparent,
        border: const Border(
          bottom: BorderSide(
            color: AppColors.lavenderGray,
            width: 1,
          ),
        ),
      ),
      child: SafeArea(
        bottom: false,
        top: false,
        child: LayoutBuilder(
          builder: (_, cst) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: cst.maxWidth,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    spacing: 12,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: tabs
                        .map<Widget>((e) => _AppTabbarTab<T>(
                              selectedValue: selectedValue,
                              tab: e,
                              onTap: onTap,
                            ))
                        .toList(),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
