import 'package:barbershop/app_widget.dart';
import 'package:barbershop/feature/home/cubits/home_cubit.dart';
import 'package:barbershop/module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  return runApp(
    BlocProvider(
      create: (context) => HomeCubit(),
      child: ModularApp(
        module: AppModule(),
        child: const AppWidget(),
      ),
    ),
  );
}
