import 'package:barbershop/widgets/custom_label.dart';
import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 111,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color(0xFF1A1B1F),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFF26272B))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomLabel.primary(text: 'Confirmado'),
              const SizedBox(height: 8),
              const Text(
                'Corte de Cabelo',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1715596828741-3e2aa6bc3aff?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Vintage Barber',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Maio',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Text(
                '10',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                '10:00',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
