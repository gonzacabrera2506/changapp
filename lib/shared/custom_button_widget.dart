import 'package:flutter/material.dart';

class CustomButtonWidget extends StatefulWidget {
  final String text;
  final Color colorText;
  final Function()? action;
  const CustomButtonWidget(
      {super.key, required this.text, required this.colorText, this.action});

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFffae50),
            shape: const StadiumBorder(side: BorderSide(color: Colors.black))),
        onPressed: widget.action,
        child: Text(
          widget.text,
          style: TextStyle(color: widget.colorText),
        ));
  }
}
