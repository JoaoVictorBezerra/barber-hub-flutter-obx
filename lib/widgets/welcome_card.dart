import 'package:flutter/material.dart';
import 'package:barbershop/feature/login/service/auth_service.dart';
import 'package:intl/intl.dart';

class WelcomeCard extends StatefulWidget {
  const WelcomeCard({
    super.key,
  });

  @override
  State<WelcomeCard> createState() => _WelcomeCardState();
}

class _WelcomeCardState extends State<WelcomeCard> {
  AuthService service = AuthService();

  String title = '';
  String formattedDate = DateFormat.MMMEd().format(DateTime.now());

  Future<void> initializeTitle() async {
    String result = await getTitle();
    setState(() {
      title = result;
    });
  }

  getTitle<String>() {
    String? name = service.getNameFromHive() ?? '';
    if (name == '') {
      return 'Olá, faça seu login!';
    } else {
      return 'Bem-vindo(a), $name!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getTitle(),
                style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w700),
              ),
              Text(
                formattedDate,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
