import 'package:barbershop/widgets/button.dart';
import 'package:barbershop/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BarberCardPage extends StatefulWidget {
  const BarberCardPage({
    super.key,
  });

  @override
  State<BarberCardPage> createState() => _BarberCardPageState();
}

class _BarberCardPageState extends State<BarberCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141518),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 250,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFF141518),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Modular.to.navigate(Modular.initialRoute);
                          },
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFF141518),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(12, 18, 0, 0),
              width: MediaQuery.sizeOf(context).width,
              height: 96,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Vintage Barber',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xFF8162FF),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Av. São Sebastião, 357, São Paulo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFF8162FF),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '5,0 (889 Avaliações)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Divider(
              color: Color(0xFF26272B),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
              child: Row(
                children: [
                  CustomButton.primary(
                    text: 'Serviço',
                    size: null,
                    route: 'null',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomButton.quarter(
                    text: 'Informações',
                    size: null,
                    route: 'null',
                  )
                ],
              ),
            ),
            const Column(
              children: [
                ServiceCard(
                  serviceTitle: 'Cortar o Cabelo',
                  serviceDescription:
                      'Estilo  personalizado com as últimas tendências',
                  price: 'R\$ 50,00',
                ),
                ServiceCard(
                  serviceTitle: 'Pézinho',
                  serviceDescription: 'Fazendo pézinho',
                  price: 'R\$ 20,00',
                ),
                ServiceCard(
                  serviceTitle: 'Pézinho',
                  serviceDescription: 'Fazendo pézinho',
                  price: 'R\$ 20,00',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
