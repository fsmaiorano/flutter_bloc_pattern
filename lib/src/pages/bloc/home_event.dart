import 'package:equatable/equatable.dart';

class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class HomeFetchListEvent extends HomeEvent {}

class HomeFetchListWithErrorEvent extends HomeEvent {}

class HomeFetchListWithEmptyListEvent extends HomeEvent {}
