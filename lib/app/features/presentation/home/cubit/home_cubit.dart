import 'package:daynex_demo/app/common/enum/home_page_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final PageController pageController = PageController();

  HomeCubit() : super(HomeState.initial());

  void setCurrentIndex(int index) {
    pageController.jumpToPage(index);
    emit(state.copyWith(currentIndex: index));
  }

  void goTo(HomePageEnum page) {
    pageController.jumpToPage(page.index);
    emit(state.copyWith(currentIndex: page.index));
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
