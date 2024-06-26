import 'package:changapp/shared/custom_container_widget.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final Icon? icon;
  const TextFieldWidget({
    super.key,
    required this.hintText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: 450,
      height: 40,
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: icon,
            hintText: hintText,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.grey)),
            filled: true,
            fillColor: Colors.white),
      ),
    );
  }
}
