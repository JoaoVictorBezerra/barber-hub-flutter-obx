import 'dart:ui';

import 'package:barbershop/feature/home/cubits/home_cubit.dart';
import 'package:barbershop/feature/home/cubits/home_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.cubit});
  final HomeCubit cubit;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(20, 21, 24, 1),
      appBar: AppBar(
        toolbarHeight: 88,
        title: const Text('FSW BARBER'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<HomeCubit, HomeStates>(
              builder: (context, state) {
                if (state is InitialHomeState) {
                  return Column(
                    children: [
                      const Text('estado inicial'),
                      ElevatedButton(
                        onPressed: () => widget.cubit.changeMood(),
                        child: const Text('Clicou'),
                      )
                    ],
                  );
                }
                if (state is LoadingHomeState) {
                  return const Text('Carregando');
                }
                if (state is LoadedHomeState) {
                  return SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 88,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Olá, faça seu login!',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    'Sexta, 10 de Maio',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Buscar Barbearias',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color.fromRGBO(38, 39, 43, 1)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  isDense: true,
                                  contentPadding: const EdgeInsets.all(7),
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Container(
                                height: 36,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(129, 98, 255, 1),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.search),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        const Row(
                          children: [
                            Text(
                              'Agendamentos',
                              style: TextStyle(
                                  color: Color.fromRGBO(131, 136, 150, 1),
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 111,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(26, 27, 31, 1),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Confirmado',
                                    style: TextStyle(
                                      color: Color.fromRGBO(129, 98, 255, 1),
                                      backgroundColor:
                                          Color.fromRGBO(34, 28, 61, 1),
                                    ),
                                  ),
                                  Text(
                                    'Corte de Cabelo',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundImage: NetworkImage('url'),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Vintage Barber',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Maio',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    '10',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    '10:00',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Row(
                          children: [
                            Text(
                              'Recomendados',
                              style: TextStyle(
                                  color: Color.fromRGBO(131, 136, 150, 1),
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        // GridView.count(
                        //   childAspectRatio: 0.9,
                        //   scrollDirection: Axis.vertical,
                        //   shrinkWrap: true,
                        //   primary: false,
                        //   padding: const EdgeInsets.all(0),
                        //   crossAxisSpacing: 10,
                        //   mainAxisSpacing: 10,
                        //   crossAxisCount: 2,
                        //   children: [],
                        // ),
                        Container(
                          width: 168,
                          height: 290,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color.fromRGBO(26, 27, 31, 1),
                          ),
                          padding: const EdgeInsets.all(4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 159,
                                height: 159,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16)),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                child: Text(
                                  'Vintage Barber',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                child: Text(
                                  'Avenida São Sebastião, 357, São Paulo',
                                  style: TextStyle(
                                      color: Color.fromRGBO(131, 136, 150, 1),
                                      fontSize: 12),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                            Color>(
                                        const Color.fromRGBO(38, 39, 43, 1)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Reservar",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return const Text('carregamento completo');
              },
              bloc: widget.cubit,
            ),
          ],
        ),
      ),
    );
  }
}
