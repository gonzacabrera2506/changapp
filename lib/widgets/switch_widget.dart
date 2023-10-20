import 'package:flutter/material.dart';

class SwitchWidget extends StatelessWidget {
  final Widget title;

  const SwitchWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      tileColor: Colors.white,
      value: false,
      title: title,
      activeColor: const Color(0xFFfe8711),
      onChanged: (bool? value) {},
    );
  }
}
