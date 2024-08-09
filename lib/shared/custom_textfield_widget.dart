import 'package:changapp/shared/custom_container_widget.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validation;
  final String hintText;
  final Icon? icon;
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
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: 320,
      height: 40,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        onTap: () {
          ScaffoldMessenger.of(context).clearSnackBars();
        },
        validator: (value) {
          final result = validation?.call(value);
          if (result != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("El campo $fieldName es requerido."),
                backgroundColor: Colors.red,
                duration: const Duration(seconds: 5),
              ),
            );
          }
          return null;
        },
        decoration: InputDecoration(
            prefixIcon: icon,
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.white)),
            errorBorder: const OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.grey)),
            focusedErrorBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.white),
      ),
    );
  }
}
