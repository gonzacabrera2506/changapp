import 'package:changapp/features/signup/presentation/screens/signup_screen.dart';
import 'package:changapp/shared/custom_button_widget.dart';
import 'package:changapp/shared/custom_textfield_widget.dart';
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
              icon: Icon(Icons.email_outlined),
              hintText: 'Email',
            ),
            const SizedBox(
              height: 10,
            ),
            const TextFieldWidget(
              icon: Icon(Icons.lock_outline),
              hintText: 'Password',
            ),
            const SizedBox(height: 20),
            //
            CustomButtonWidget(
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
            CustomButtonWidget(
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
