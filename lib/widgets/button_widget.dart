import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color colorText;
  const ButtonWidget({super.key, required this.text, required this.colorText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber.shade600,
            shape:
                const StadiumBorder(side: BorderSide(color: Colors.black54))),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: colorText),
        ));
  }
}
