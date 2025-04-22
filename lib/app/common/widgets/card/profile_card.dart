import 'package:daynex_demo/app/common/constants/app_colors.dart';
import 'package:daynex_demo/app/common/enum/svg_enum.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    this.imageUrl,
    this.showTopRightIcon = false,
    this.topRightIcon,
    this.onTopRightIconTap,
  });

  final String? imageUrl;
  final bool showTopRightIcon;
  final SvgEnum? topRightIcon;
  final VoidCallback? onTopRightIconTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox.square(
          dimension: 56,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: AppColors.lavenderGray,
              ),
              image: imageUrl != null
                  ? DecorationImage(
                      image: NetworkImage(imageUrl!),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            child: imageUrl == null
                ? Center(
                    child: SvgEnum.arrowLeft.svgWidget(
                      width: 32,
                      height: 32,
                    ),
                  )
                : null,
          ),
        ),
        if (showTopRightIcon && topRightIcon != null)
          Positioned(
            right: -10,
            bottom: 36,
            child: GestureDetector(
              onTap: onTopRightIconTap,
              child: Container(
                padding: const EdgeInsets.all(4),
                child: topRightIcon!.svgWidget(),
              ),
            ),
          ),
      ],
    );
  }
}
