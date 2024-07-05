import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {
  final List<Widget> widgets;
  final MainAxisAlignment alignment;
  const CustomRowWidget(
      {super.key, required this.widgets, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: widgets,
    );
  }
}
