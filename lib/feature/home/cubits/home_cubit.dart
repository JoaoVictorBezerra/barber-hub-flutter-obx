import 'package:barbershop/feature/home/cubits/home_states.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(InitialHomeState());

  Future<void> changeMood() async {
    try {
      emit(LoadingHomeState(loading: true));
      await Future.delayed(const Duration(seconds: 2));
      emit(LoadedHomeState());
    } on Exception catch (e) {
      print(e);
      emit(ErrorHomeStates(message: 'Erro de carregamento'));
    }
  }
}
