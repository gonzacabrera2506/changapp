import 'package:changapp/widgets/button_widget.dart';
import 'package:changapp/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.asset('assets/changappLogo.png'),
          const SizedBox(
            height: 12,
          ),
          const TextFieldWidget(
            hintText: 'Email',
          ),
          const SizedBox(
            height: 10,
          ),
          const TextFieldWidget(
            hintText: 'Password',
          ),
          const SizedBox(height: 20),
          const ButtonWidget(
            text: 'Iniciar Sesión',
            colorText: Colors.black54,
          ),
          const SizedBox(height: 55),
          const Text('No estás registrado?',
              style: TextStyle(color: Colors.black87)),
          const SizedBox(
            height: 10,
          ),
          const ButtonWidget(text: 'Registrarme', colorText: Colors.black)
        ]));
  }
}
