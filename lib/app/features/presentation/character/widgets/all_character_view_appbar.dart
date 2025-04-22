import 'package:daynex_demo/app/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AllCharacterAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AllCharacterAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              letterSpacing: 1.2,
            ),
      ),
      iconTheme: const IconThemeData(color: AppColors.white),
      centerTitle: true,
      backgroundColor: AppColors.black87,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
