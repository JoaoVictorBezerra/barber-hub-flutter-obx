import 'package:barbershop/feature/register/cubits/register_states.dart';
import 'package:bloc/bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit()
      : super(
          InitialRegisterState(),
        );
}
