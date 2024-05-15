import 'package:barbershop/feature/home/cubits/home_cubit.dart';
import 'package:barbershop/feature/home/cubits/home_states.dart';
import 'package:barbershop/widgets/barbershop_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/schedule_card.dart';

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
      backgroundColor: const Color(0xFF141518),
      appBar: AppBar(
        backgroundColor: const Color(0xFF141518),
        toolbarHeight: 88,
        title: const Text(
          'FSW BARBER',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
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
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'Sexta, 10 de Maio',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
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
                              width: MediaQuery.sizeOf(context).width * 0.7,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Buscar Barbearias',
                                  fillColor: const Color(0xFF1A1B1F),
                                  filled: true,
                                  hintStyle:
                                      TextStyle(color: Color(0xFF838896)),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFF26272B),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  isDense: true,
                                  contentPadding: const EdgeInsets.all(8),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              // color: Color(0xFF8162FF),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xFF8162FF)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              icon: const Icon(Icons.search),
                              color: Colors.white,
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        const Row(
                          children: [
                            Text(
                              'Agendamentos',
                              style: TextStyle(
                                color: Color(0xFF838896),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        ScheduleCard(),
                        const SizedBox(height: 30),
                        const Row(
                          children: [
                            Text(
                              'Recomendados',
                              style: TextStyle(
                                  color: Color(0xFF838896), fontSize: 12),
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
                        const BarbershopCard(
                          title: 'Vintage Barber',
                          address: 'Avenida São Sebastião, 357, São Paulo',
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
