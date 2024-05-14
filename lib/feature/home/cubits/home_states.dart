abstract class HomeStates {}

class InitialHomeState extends HomeStates {}

class LoadingHomeState extends HomeStates {
  final bool loading;

  LoadingHomeState({required this.loading});
}

class LoadedHomeState extends HomeStates {}

class ErrorHomeStates extends HomeStates {
  final String message;

  ErrorHomeStates({required this.message});
}
