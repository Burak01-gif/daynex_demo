import 'package:daynex_demo/app/common/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:daynex_demo/app/features/presentation/character/cubit/character_cubit.dart';

class AllCharacterError extends StatelessWidget {
  final String message;
  final String endpoint;

  const AllCharacterError({
    super.key,
    required this.message,
    required this.endpoint,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 48, color: AppColors.redError),
          const SizedBox(height: 16),
          Text(
            message,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.redError,
                  fontWeight: FontWeight.w500,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              context.read<CharacterCubit>().fetchCharacters(endpoint);
            },
            icon: const Icon(Icons.refresh),
            label: Text(
              "Try Again",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.black87,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }
}
