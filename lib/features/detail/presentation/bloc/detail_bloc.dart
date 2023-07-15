import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repository/detail_repository.dart';
import 'detail_event.dart';
import 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(DetailInitial()) {
    on<DetailRequest>(_getCake);
    on<DeleteRequest>(_deleteCake);
  }

  Future<void> _getCake(
    DetailRequest event,
    Emitter<DetailState> emit,
  ) async {
    emit(DetailLoading());

    final result = await DetailRepository.getCake(
      event.id,
    );

    result.fold(
      (failure) => emit(DetailFailure(message: failure.message)),
      (result) => emit(DetailSuccess(cake: result)),
    );
  }

  Future<void> _deleteCake(
    DeleteRequest event,
    Emitter<DetailState> emit,
  ) async {
    emit(DetailLoading());

    final result = await DetailRepository.deleteCake(
      event.id,
    );

    result.fold(
      (failure) => emit(DetailFailure(message: failure.message)),
      (result) => emit(DetailDeleteSuccess()),
    );
  }
}
