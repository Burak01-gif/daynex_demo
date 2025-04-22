part of 'app_tabbar.dart';

class _AppTabbarTab<T extends IAppTabbarEnum> extends StatelessWidget {
  const _AppTabbarTab({
    required this.tab,
    this.onTap,
    required this.selectedValue,
  });

  final AppTabbarData tab;
  final T selectedValue;
  final void Function(T value)? onTap;

  @override
  Widget build(BuildContext context) {
    final isSelected = tab.value == selectedValue;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => onTap?.call(tab.value as T),
      child: IntrinsicWidth(
        child: Column(
          children: [
            Expanded(
              child: Row(
                spacing: 4,
                children: [
                  if (tab.selectedIcon != null ||
                      (tab.unselectedIcon != null && tab.selectedIcon != null))
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        isSelected
                            ? AppColors.spaceCadet
                            : AppColors.lavenderGray,
                        BlendMode.srcIn,
                      ),
                      child: isSelected
                          ? tab.selectedIcon
                          : tab.unselectedIcon ?? tab.selectedIcon,
                    ),
                  Text(tab.title),
                ],
              ),
            ),
            if (isSelected)
              Container(
                width: double.infinity,
                height: 2,
                decoration: BoxDecoration(
                  color: AppColors.spaceCadet,
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
