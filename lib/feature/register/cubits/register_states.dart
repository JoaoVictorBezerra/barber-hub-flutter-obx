abstract class RegisterState {}

class InitialRegisterState extends RegisterState {}

class LoadingRegisterState extends RegisterState {}

class LoadedRegisterState extends RegisterState {}

class ErrorRegisterState extends RegisterState {
  final String message;

  ErrorRegisterState({
    required this.message,
  });
}
