import 'package:barbershop/widgets/button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BarberShopPage extends StatefulWidget {
  const BarberShopPage({
    super.key,
  });

  @override
  State<BarberShopPage> createState() => _BarberShopPageState();
}

class _BarberShopPageState extends State<BarberShopPage> {
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
                    decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
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
                            color: Color(0xFFFFFFFF),
                          ),
                          onPressed: () => {
                            Modular.to.pop(),
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
                            color: Color(0xFFFFFFFF),
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
                        'barbeiro',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
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
                          'blablabla',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                          ),
                        )
                      ]),
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
                          color: Color(0xFFFFFFFF),
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
                    onPressedFunction: () {},
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomButton.quarter(
                    text: 'Informações',
                    onPressedFunction: () {},
                  )
                ],
              ),
            ),
            // Column(
            //   children: dados[0].services.map((service) {
            //     return ServiceCard(
            //       serviceTitle: service.name,
            //       serviceDescription: service.description,
            //       price: 'R\$ ${service.price}',
            //     );
            //   }).toList(),
            // ),
          ],
        ),
      ),
    );
  }
}
