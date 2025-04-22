import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:daynex_demo/app/common/constants/app_colors.dart';
import 'package:daynex_demo/app/common/constants/app_strings.dart';
import 'package:daynex_demo/app/common/enum/home_page_enum.dart';
import 'package:daynex_demo/app/common/widgets/buttons/app_button.dart';
import 'package:daynex_demo/app/features/presentation/audio/cubit/audio_cubit.dart';
import 'package:daynex_demo/app/features/presentation/audio/cubit/audio_state.dart';
import 'package:daynex_demo/app/features/presentation/home/cubit/home_cubit.dart';
import 'package:daynex_demo/core/extension/context_extension.dart';
import 'package:daynex_demo/core/extension/padding_extension.dart';

class WelcomeWidget extends HookWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        Expanded(
          flex: 1,
          child: Center(
            child: ShaderMask(
              shaderCallback: (bounds) {
                return const LinearGradient(
                  colors: [AppColors.gryffindorRed, AppColors.hogwartsGold],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              child: Text(
                AppStrings.harryPotter,
                textAlign: TextAlign.center,
                style: context.theme.textTheme.titleLarge?.copyWith(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),
        ),

        Expanded(
          flex: 1,
          child: Center(
            child: AppButton.border(
              onPressed: () {
                context.read<HomeCubit>().goTo(HomePageEnum.routeButtons);
              },
              text: AppStrings.goToApiRoutes,
            ).allPadding(context.width24),
          ),
        ),


          Expanded(
            flex: 1,
            child: Center(
              child: BlocSelector<AudioCubit, AudioState, bool>(
                selector: (state) => state is AudioPlaying,
                builder: (context, isPlaying) {
                  return IconButton(
                    onPressed: () => context.read<AudioCubit>().toggleAudio(),
                    icon: Icon(
                      Icons.music_note,
                      color: AppColors.hogwartsGreen,
                      size: 48,
                    ),
                  );
                },
              ),
            ),
          ),


      ],
    ).symmetricPadding(vertical: context.height36);
  }
}
