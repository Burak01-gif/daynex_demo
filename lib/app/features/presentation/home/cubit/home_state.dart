import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final int currentIndex;

  const HomeState({required this.currentIndex});

  factory HomeState.initial() => const HomeState(currentIndex: 0);

  HomeState copyWith({int? currentIndex}) {
    return HomeState(currentIndex: currentIndex ?? this.currentIndex);
  }

  @override
  List<Object> get props => [currentIndex];
}
