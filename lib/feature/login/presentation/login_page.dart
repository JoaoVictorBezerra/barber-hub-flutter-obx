import 'package:barbershop/feature/login/service/auth_service.dart';
import 'package:barbershop/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

Future<bool> isTokenExist() async {
  return Hive.box('authBox').get('token') != null;
}

class _LoginPageState extends State<LoginPage> {
  final AuthService authService = AuthService();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Faça Login!',
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.7,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    fillColor: const Color(0xFF1A1B1F),
                    filled: true,
                    hintStyle: const TextStyle(color: Color(0xFF838896)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF26272B),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.all(8),
                  ),
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.7,
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'Senha',
                    fillColor: const Color(0xFF1A1B1F),
                    filled: true,
                    hintStyle: const TextStyle(color: Color(0xFF838896)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF26272B),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.all(8),
                  ),
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomButton.secundary(
                    text: 'Inscreva-se',
                    onPressedFunction: () {},
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomButton.primary(
                    text: 'Autenticar-se',
                    onPressedFunction: () async {
                      await authService.login(
                        emailController.text,
                        passwordController.text,
                      );
                      Modular.to.navigate(Modular.initialRoute);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
