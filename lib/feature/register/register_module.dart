import 'package:barbershop/feature/register/cubits/register_cubit.dart';
import 'package:barbershop/feature/register/presentation/Register_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<RegisterCubit>(RegisterCubit.new);
  }

  @override
  void routes(r) {
    r.child(
      '/register',
      child: (context) => const RegisterPage(),
    );
  }
}
