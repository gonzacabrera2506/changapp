import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;

  const CustomContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
