import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  final String title;
  const CheckBoxWidget({super.key, required this.title});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      tileColor: Colors.amber,
      checkColor: Colors.amberAccent,
      title: Text(widget.title),
      value: true,
      onChanged: (bool? value) {},
    );
  }
}
