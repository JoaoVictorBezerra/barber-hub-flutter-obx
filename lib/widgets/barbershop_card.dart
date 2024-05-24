import 'package:barbershop/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BarberShopCard extends StatelessWidget {
  final String title;
  final String address;
  final String? id;

  const BarberShopCard({
    super.key,
    required this.title,
    required this.address,
    this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      height: 290,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFF1A1B1F),
        border: Border.all(
          color: const Color(0xFF26272B),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 159,
            height: 159,
            padding: const EdgeInsets.only(top: 8, left: 4, right: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: const Color(0xFFFFFFFF), fontSize: 16),
                ),
                Text(
                  address,
                  style: const TextStyle(
                    color: Color(0xFF838896),
                    fontSize: 12,
                  ),
                ),
                CustomButton.secundary(
                  text: 'Reservar',
                  expanded: true,
                  onPressedFunction: () {
                    Modular.to.pushNamed('/barbershop/');
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
