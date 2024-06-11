import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color colorText;
  final Function()? action;
  const ButtonWidget(
      {super.key, required this.text, required this.colorText, this.action});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFffae50),
            shape: const StadiumBorder(side: BorderSide(color: Colors.black))),
        onPressed: action,
        child: Text(
          text,
          style: TextStyle(color: colorText),
        ));
  }
}
