import 'package:barbershop/feature/login/cubits/login_states.dart';
import 'package:bloc/bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit()
      : super(
          InitialLoginState(),
        );
}
