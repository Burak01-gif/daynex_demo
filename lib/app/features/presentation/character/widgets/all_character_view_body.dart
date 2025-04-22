import 'package:daynex_demo/app/common/constants/app_colors.dart';
import 'package:daynex_demo/core/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:daynex_demo/app/features/presentation/character/cubit/character_cubit.dart';
import 'package:daynex_demo/app/features/presentation/character/cubit/character_state.dart';
import 'package:daynex_demo/app/features/presentation/character/widgets/all_character_error.dart';
import 'package:daynex_demo/app/features/presentation/character/widgets/all_character_list.dart';

class AllCharacterBody extends StatelessWidget {
  final String endpoint;

  const AllCharacterBody({super.key, required this.endpoint});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CharacterCubit, CharacterState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (message) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                AppSnackBar.show(
                  message,
                  backgroundColor: AppColors.gryffindorRed,
                  textColor: AppColors.white,
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (characters) => AllCharacterList(characters: characters),
          error: (message) => AllCharacterError(message: message, endpoint: endpoint),
        );
      },
    );
  }
}
