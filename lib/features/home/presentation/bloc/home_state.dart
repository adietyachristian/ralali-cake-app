import '../../data/model/home_model.dart';

abstract class HomeState {
  const HomeState();
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  final HomeModel homeModel;

  const HomeSuccess({required this.homeModel});
}

class HomeFailure extends HomeState {
  final String message;

  const HomeFailure({required this.message});
}
