import 'package:auto_route/auto_route.dart';
import 'package:daynex_demo/app/common/get_it/get_it.dart';
import 'package:daynex_demo/app/features/presentation/character/cubit/character_cubit.dart';import 'package:daynex_demo/app/features/presentation/character/widgets/all_character_view_appbar.dart';
import 'package:daynex_demo/app/features/presentation/character/widgets/all_character_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AllCharacterView extends StatelessWidget {
  final String endpoint;
  final String title;

  const AllCharacterView({
    super.key,
    required this.endpoint,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CharacterCubit>()..fetchCharacters(endpoint),
      child: Scaffold(
        appBar: AllCharacterAppBar(title: title),
        body: AllCharacterBody(endpoint: endpoint),
      ),
    );
  }
}
