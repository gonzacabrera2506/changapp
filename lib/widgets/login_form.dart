import 'package:changapp/screens/home_screen.dart';
import 'package:changapp/screens/signup_screen.dart';
import 'package:changapp/widgets/button_widget.dart';
import 'package:changapp/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 20,
            ),
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
            //
            ButtonWidget(
              text: 'Iniciar Sesión',
              colorText: Colors.black,
              action: () {},
            ),
            const SizedBox(height: 58),
            const Text('No estás registrado?',
                style: TextStyle(color: Colors.black)),
            const SizedBox(
              height: 10,
            ),
            //
            ButtonWidget(
              text: 'Registrarme',
              colorText: Colors.black,
              action: () {
                context.pushNamed(SignupScreen.name);
              },
            )
          ])),
    );
  }
}
