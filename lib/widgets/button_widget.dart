import 'package:flutter/material.dart';

class ButtonNavigateToRegister extends StatelessWidget {
  final String text;
  final Color colorText;
  final Function()? redirect;
  const ButtonNavigateToRegister(
      {super.key, required this.text, required this.colorText, this.redirect});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber.shade600,
            shape: const StadiumBorder(
                side: BorderSide(color: Color.fromARGB(255, 174, 80, 255)))),
        onPressed: redirect,
        child: Text(
          text,
          style: TextStyle(color: colorText),
        ));
  }
}
