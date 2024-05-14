import 'package:barbershop/feature/login/cubits/login_cubit.dart';
import 'package:barbershop/feature/login/presentation/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<LoginCubit>(LoginCubit.new);
  }

  @override
  void routes(r) {
    r.child(
      '/login',
      child: (context) => const LoginPage(),
    );
  }
}
