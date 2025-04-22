import 'package:daynex_demo/app/common/enum/home_page_enum.dart';
import 'package:daynex_demo/app/features/presentation/home/cubit/home_cubit.dart';
import 'package:daynex_demo/app/features/presentation/home/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return PageView.builder(
              controller: cubit.pageController,
              itemCount: HomePageEnum.values.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) => HomePageEnum.values[index].view,
            );
          },
        ),
      ),
    );
  }
}
