part of 'app_tabbar.dart';

class AppTabbarData<T extends IAppTabbarEnum> {
  AppTabbarData({
    required this.title,
    this.selectedIcon,
    this.unselectedIcon,
    required this.value,
  });

  final String title;
  final Widget? selectedIcon;
  final Widget? unselectedIcon;
  final T value;
}
