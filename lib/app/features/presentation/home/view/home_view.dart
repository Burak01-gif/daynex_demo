import 'package:auto_route/auto_route.dart';
import 'package:daynex_demo/app/features/presentation/home/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:daynex_demo/app/features/presentation/home/cubit/home_cubit.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: const HomeBody(),
    );
  }
}
