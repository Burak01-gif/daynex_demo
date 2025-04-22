import 'package:auto_route/auto_route.dart';
import 'package:daynex_demo/app/common/constants/app_colors.dart';
import 'package:daynex_demo/app/common/constants/app_strings.dart';
import 'package:daynex_demo/app/common/enum/home_page_enum.dart';
import 'package:daynex_demo/app/common/enum/hp_api_endpoint_enum.dart';
import 'package:daynex_demo/app/common/enum/svg_enum.dart';
import 'package:daynex_demo/app/common/router/app_router.gr.dart';
import 'package:daynex_demo/app/common/widgets/buttons/app_button.dart';
import 'package:daynex_demo/app/features/presentation/home/cubit/home_cubit.dart';
import 'package:daynex_demo/core/extension/context_extension.dart';
import 'package:daynex_demo/core/extension/padding_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteButtonsPage extends StatelessWidget {
  const RouteButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = {
      AppStrings.allCharacters: HpApiEndpoint.allCharacters,
      AppStrings.hogwartsStudents: HpApiEndpoint.hogwartsStudents,
      AppStrings.hogwartsStaff: HpApiEndpoint.hogwartsStaff,
      AppStrings.gryffindorCharacters: HpApiEndpoint.gryffindorCharacters,
      AppStrings.allSpells: HpApiEndpoint.allSpells,
    };

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// 🔙 Back Icon
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              context.read<HomeCubit>().goTo(HomePageEnum.welcome);
            },
            child: SvgEnum.arrowLeft.svgWidget(
              height: context.height36,
              width: context.width32,
              color: AppColors.blackColor,
            ),
          ),
        ).onlyPadding(
          left: context.width16,
          top: context.height16,
        ),

        Center(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: context.width24,
              vertical: context.height24,
            ),
            decoration: BoxDecoration(
              color: AppColors.black87,
              borderRadius: BorderRadius.circular(context.width32),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppStrings.apiRouteTitle,
                  style: context.theme.textTheme.bodyMedium?.copyWith(
                    color: AppColors.white70,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ).onlyPadding(bottom: context.height24),

                ...items.entries.map(
                  (entry) => AppButton.border(
                    onPressed: () {
                      context.router.push(
                        AllCharacterRoute(endpoint: entry.value.path, title: entry.key,),
                      );
                    },
                    text: entry.key,
                  ).symmetricPadding(vertical: context.height8),
                ),
              ],
            ),
          ),
        ),

        ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(
              colors: [
                AppColors.gryffindorRed,
                AppColors.hogwartsGold,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds);
          },
          child: Text(
            AppStrings.producer,
            style: context.theme.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: AppColors.white,
            ),
          ),
        ).onlyPadding(bottom: context.height16),
      ],
    );
  }
}
