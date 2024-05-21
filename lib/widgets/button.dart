import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomButton extends StatelessWidget {
  final String text;
  late final Color backgroundColor;
  late final Color textColor;
  late final Color border;
  late final double? size;
  late final String? route;

  CustomButton.primary({
    Key? key,
    required this.text,
    required this.size,
    required this.route,
  }) : super(key: key) {
    backgroundColor = const Color(0xFF8162FF);
    textColor = const Color(0xFFFFFFFF);
    border = const Color(0xFF8162FF);
  }

  CustomButton.secundary({
    Key? key,
    required this.text,
    required this.size,
    required this.route,
  }) : super(key: key) {
    backgroundColor = const Color(0xFF26272B);
    textColor = const Color(0xFFFFFFFF);
    border = const Color(0xFF26272B);
  }

  CustomButton.tertiary({
    Key? key,
    required this.text,
    required this.size,
    required this.route,
  }) : super(key: key) {
    backgroundColor = const Color(0xFFEF4444);
    textColor = const Color(0xFFFFFFFF);
    border = const Color(0xFFEF4444);
  }

  CustomButton.quarter({
    Key? key,
    required this.text,
    required this.size,
    required this.route,
  }) : super(key: key) {
    textColor = const Color(0xFFFFFFFF);
    border = const Color(0xFF26272B);
    backgroundColor = const Color(0xFF1A1B1F);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: MediaQuery.sizeOf(context).width,
      width: size,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: border)),
          ),
        ),
        onPressed: () => Modular.to.navigate(route!),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
