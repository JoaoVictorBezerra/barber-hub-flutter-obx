import 'package:barbershop/feature/home/cubits/home_states.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(InitialHomeState());
}
