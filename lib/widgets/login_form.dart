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
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Email',
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white)),
                filled: true,
                fillColor: Colors.white70),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Password',
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white)),
                filled: true,
                fillColor: Colors.white70),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade600,
                  shape: const StadiumBorder(
                      side: BorderSide(color: Colors.black54))),
              onPressed: () {},
              child: const Text(
                'Iniciar Sesión',
                style: TextStyle(color: Colors.black45),
              )),
          const SizedBox(height: 35),
          const Text('No estás registrado?',
              style: TextStyle(color: Colors.black87))
        ]));
  }
}
