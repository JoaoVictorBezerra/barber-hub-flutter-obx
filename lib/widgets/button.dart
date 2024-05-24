import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  late final Color backgroundColor;
  late final Color textColor;
  late final Color border;
  late final double? size;
  late final Function onPressedFunction;
  late final bool? expanded;

  CustomButton.primary({
    Key? key,
    required this.text,
    required this.onPressedFunction,
    this.expanded,
  }) : super(key: key) {
    backgroundColor = const Color(0xFF8162FF);
    textColor = const Color(0xFFFFFFFF);
    border = const Color(0xFF8162FF);
  }

  CustomButton.secundary({
    Key? key,
    required this.text,
    required this.onPressedFunction,
    this.expanded,
  }) : super(key: key) {
    backgroundColor = const Color(0xFF26272B);
    textColor = const Color(0xFFFFFFFF);
    border = const Color(0xFF26272B);
  }

  CustomButton.tertiary({
    Key? key,
    required this.text,
    required this.onPressedFunction,
    this.expanded,
  }) : super(key: key) {
    backgroundColor = const Color(0xFFEF4444);
    textColor = const Color(0xFFFFFFFF);
    border = const Color(0xFFEF4444);
  }

  CustomButton.quarter({
    Key? key,
    required this.text,
    required this.onPressedFunction,
    this.expanded,
  }) : super(key: key) {
    textColor = const Color(0xFFFFFFFF);
    border = const Color(0xFF26272B);
    backgroundColor = const Color(0xFF1A1B1F);
  }

  @override
  Widget build(BuildContext context) {
    if (expanded ?? false) {
      size = MediaQuery.sizeOf(context).width * 1;
    } else {
      size = null;
    }

    return SizedBox(
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
        onPressed: () => {
          onPressedFunction(),
        },
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
