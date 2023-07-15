import 'package:ralali_cake_app/features/home/data/model/cake_model.dart';

abstract class DetailState {
  const DetailState();
}

class DetailInitial extends DetailState {}

class DetailLoading extends DetailState {}

class DetailSuccess extends DetailState {
  final CakeModel cake;

  const DetailSuccess({required this.cake});
}

class DetailDeleteSuccess extends DetailState {}

class DetailFailure extends DetailState {
  final String message;

  const DetailFailure({required this.message});
}
