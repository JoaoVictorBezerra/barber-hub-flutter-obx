import 'package:barbershop/app_widget.dart';
import 'package:barbershop/app_module.dart';
import 'package:barbershop/configs/hive_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfig.start();

  await Hive.openBox('authBox');
  Hive.box('authBox').put('token', '');
  Hive.box('authBox').put('name', '');
  return runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
