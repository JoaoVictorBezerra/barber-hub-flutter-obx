abstract class HomeStates {}

class InitialHomeState extends HomeStates {}

class LoadingHomeState extends HomeStates {}

class LoadedHomeState extends HomeStates {}

class ErrorHomeStates extends HomeStates {
  final String message;

  ErrorHomeStates({required this.message});
}
