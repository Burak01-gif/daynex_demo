import 'package:daynex_demo/app/common/constants/app_theme_data.dart';
import 'package:daynex_demo/app/common/functions/app_functions.dart';
import 'package:daynex_demo/app/common/get_it/get_it.dart';
import 'package:daynex_demo/app/common/router/app_router.dart';
import 'package:daynex_demo/app/features/presentation/audio/cubit/audio_cubit.dart';
import 'package:daynex_demo/app/features/presentation/character/cubit/character_cubit.dart';
import 'package:daynex_demo/app/features/presentation/home/cubit/home_cubit.dart';
import 'package:daynex_demo/core/keys/app_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await AppFunctions.instance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt.get<AppRouter>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AudioCubit>()), 
        BlocProvider(create: (_) => HomeCubit()),
        BlocProvider(create: (_) => CharacterCubit(getIt())),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: AppKeys.scaffoldMessengerKey,
        title: 'Daynex Demo',
        routerConfig: appRouter.config(),
        theme: AppThemeData.themeData,
      ),
    );
  }
}
