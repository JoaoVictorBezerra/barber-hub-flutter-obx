import 'package:barbershop/feature/barbershop/cubits/barbershop_cubit.dart';
import 'package:barbershop/feature/barbershop/presentation/barber_card_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BarberShopModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<BarberShopCubit>(BarberShopCubit.new);
  }

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (context) => const BarberShopPage(),
    );
  }
}
