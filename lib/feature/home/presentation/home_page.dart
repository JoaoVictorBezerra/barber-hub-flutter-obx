import 'package:barbershop/feature/barbershop/utils/data_barbershop.dart';
import 'package:barbershop/feature/home/cubits/home_cubit.dart';
import 'package:barbershop/feature/home/cubits/home_states.dart';
import 'package:barbershop/widgets/barbershop_card.dart';
import 'package:barbershop/widgets/shimmer_barbershop_card.dart';
import 'package:barbershop/widgets/shimmer_schedule_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../widgets/schedule_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.cubit,
  });

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
          style: TextStyle(color: const Color(0xFFFFFFFF)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: const Color(0xFFFFFFFF),
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
                  widget.cubit.changeMood();
                  return SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Shimmer.fromColors(
                          baseColor: Colors.grey[900]!,
                          highlightColor: Colors.grey[800]!,
                          child: SizedBox(
                            height: 88,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 16,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
                                      const TextStyle(color: Color(0xFF838896)),
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
                              color: const Color(0xFFFFFFFF),
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
                        const ShimmerScheduleCard(),
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
                        GridView.count(
                          childAspectRatio: 0.6,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          primary: false,
                          padding: const EdgeInsets.all(0),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                          children: const [
                            ShimmerBarberShopCard(),
                            ShimmerBarberShopCard(),
                          ],
                        ),
                      ],
                    ),
                  );
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
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'Sexta, 10 de Maio',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: const Color(0xFFFFFFFF)),
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
                                      const TextStyle(color: Color(0xFF838896)),
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
                              color: const Color(0xFFFFFFFF),
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
                        const ScheduleCard(),
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
                        GridView.count(
                          childAspectRatio: 0.6,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          primary: false,
                          padding: const EdgeInsets.all(0),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                          children: dados.map((barbershop) {
                            return BarberShopCard(
                              title: barbershop.name,
                              address: barbershop.address,
                              id: barbershop.id,
                            );
                          }).toList(),
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
