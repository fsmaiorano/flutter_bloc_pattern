import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pattern/src/pages/bloc/home_event.dart';
import 'package:flutter_bloc_pattern/src/pages/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(const HomeLoadingState()) {
    on<HomeFetchListEvent>((event, emit) async {
      emit(const HomeLoadingState());
      await Future.delayed(const Duration(seconds: 1));
      emit(await _fetchList());
    });

    on<HomeFetchListWithErrorEvent>((event, emit) async {
      emit(const HomeLoadingState());
      await Future.delayed(const Duration(seconds: 2));
      emit(const HomeErrorState('Error'));
    });

    on<HomeFetchListWithEmptyListEvent>((event, emit) async {
      emit(const HomeLoadingState());
      await Future.delayed(const Duration(seconds: 2));
      emit(const HomeEmptyListState());
    });
  }

  Future<HomeState> _fetchList() async {
    await Future.delayed(const Duration(seconds: 1));
    return HomeLoadedState(List.generate(50, (index) => 'Item $index'));
  }
}
