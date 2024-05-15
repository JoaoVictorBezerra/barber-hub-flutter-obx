import 'package:flutter/material.dart';

class CustomLabel extends StatelessWidget {
  final String text;
  late final Color backgroundColor;
  late final Color textColor;
  // const CustomLabel({super.key});

  CustomLabel.primary({
    Key? key,
    required this.text,
  }): super(key: key) {
    backgroundColor = const Color(0xFF221C3D);
    textColor = const Color(0xFF8162FF);
  }

  CustomLabel.secondary({
    Key? key,
    required this.text,
  }): super(key: key) {
    backgroundColor = const Color(0xFF26272B);
    textColor = const Color(0xFF838896);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
