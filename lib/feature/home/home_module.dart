import 'package:barbershop/feature/home/cubits/home_cubit.dart';
import 'package:barbershop/feature/home/presentation/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<HomeCubit>(HomeCubit.new);
  }

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (context) => HomePage(
        cubit: Modular.get<HomeCubit>(),
      ),
    );
  }
}
