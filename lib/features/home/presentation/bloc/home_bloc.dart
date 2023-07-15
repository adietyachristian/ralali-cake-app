import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repository/home_repository.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeRequest>(_getCakes);
  }

  Future<void> _getCakes(
    HomeRequest event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeLoading());

    final result = await HomeRepository.getCakes();

    result.fold(
      (failure) => emit(HomeFailure(message: failure.message)),
      (result) => emit(HomeSuccess(homeModel: result)),
    );
  }
}
