import 'package:barbershop/feature/barbershop/barbershop_module.dart';
import 'package:barbershop/feature/home/home_module.dart';
import 'package:barbershop/feature/login/login_module.dart';
import 'package:barbershop/feature/register/register_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(
      Modular.initialRoute,
      module: HomeModule(),
    );
    r.module(
      '/login',
      module: LoginModule(),
    );
    r.module(
      '/register',
      module: RegisterModule(),
    );
    r.module(
      '/barbershop',
      module: BarberShopModule(),
    );
  }
}
