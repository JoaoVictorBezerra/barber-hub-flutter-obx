abstract class LoginState {}

class InitialLoginState extends LoginState {}

class LoadingLoginState extends LoginState {}

class LoadedLoginState extends LoginState {}

class ErroLoginState extends LoginState {
  final String message;

  ErroLoginState({required this.message});
}
