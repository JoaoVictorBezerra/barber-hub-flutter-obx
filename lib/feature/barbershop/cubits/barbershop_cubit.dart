import 'package:barbershop/feature/barbershop/cubits/barbershop_states.dart';
import 'package:bloc/bloc.dart';

class BarberShopCubit extends Cubit<BarberShopStates> {
  BarberShopCubit()
      : super(
          InitialBarberShopState(),
        );
}
