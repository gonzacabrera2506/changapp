import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validation;
  final String hintText;
  final Icon? icon;
  final IconButton? suffixIcon;
  final String? fieldName;
  final bool obscureText;
  const TextFieldWidget({
    super.key,
    required this.hintText,
    this.icon,
    this.validation,
    this.fieldName,
    this.obscureText = false,
    required this.controller,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Material(
        color: Colors.transparent,
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          validator: validation,
          decoration: InputDecoration(
            prefixIcon: icon,
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              iconSize: 15,
              splashRadius: 80,
              onPressed: () {
                controller.clear();
              },
            ),
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.grey)),
            filled: true,
            fillColor: Colors.white,
            errorStyle: const TextStyle(fontSize: 8),
          ),
        ),
      ),
    );
  }
}
