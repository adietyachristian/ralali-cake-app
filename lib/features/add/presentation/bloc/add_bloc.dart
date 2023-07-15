import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ralali_cake_app/features/home/data/model/cake_model.dart';

import '../../data/repository/add_repository.dart';
import 'add_event.dart';
import 'add_state.dart';

class AddBloc extends Bloc<AddEvent, AddState> {
  AddBloc() : super(AddInitial()) {
    on<AddRequest>(_getCakes);
  }

  Future<void> _getCakes(
    AddRequest event,
    Emitter<AddState> emit,
  ) async {
    emit(AddLoading());

    final result = await AddRepository.addCake(
      CakeModel(
        id: '',
        title: event.title,
        description: event.description,
        rating: event.rating,
        image: event.image,
      ),
    );

    result.fold(
      (failure) => emit(AddFailure(message: failure.message)),
      (result) => emit(AddSuccess()),
    );
  }
}
