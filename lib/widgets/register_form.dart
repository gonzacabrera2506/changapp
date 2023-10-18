import 'package:changapp/screens/signup_screen.dart';
import 'package:changapp/widgets/button_widget.dart';
import 'package:changapp/widgets/checkbox_widget.dart';
import 'package:changapp/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              BackButton(),
            ],
          ),
          Image.asset('assets/changappLogo.png', width: 190),
          const SizedBox(
            height: 8,
          ),
          const Text("Datos Personales", style: TextStyle(fontSize: 15)),
          const SizedBox(
            height: 9,
          ),
          //const CardWidget(),
          const TextFieldWidget(
            hintText: 'Nombre/s',
          ),
          const SizedBox(
            height: 10,
          ),
          const TextFieldWidget(
            hintText: 'Apellido',
          ),
          const SizedBox(
            height: 10,
          ),
          const TextFieldWidget(
            hintText: 'Nombre fantasia(opcional)',
          ),
          const SizedBox(
            height: 10,
          ),
          const TextFieldWidget(
            hintText: 'Dirección(opcional)',
          ),
          const SizedBox(
            height: 10,
          ),
          const TextFieldWidget(
            hintText: 'Teléfono de contacto',
          ),
          const SizedBox(
            height: 10,
          ),
          const TextFieldWidget(
            hintText: 'Email',
          ),

          const SizedBox(
            height: 12,
          ),
          const Divider(color: Colors.black54),
          const Text("Oficios o servicios", style: TextStyle(fontSize: 15)),
          const SizedBox(
            height: 9,
          ),
          const CheckBoxWidget(title: 'Albañilería'),
          const CheckBoxWidget(title: 'Plomería'),
          const CheckBoxWidget(title: 'Jardinería'),
          const CheckBoxWidget(title: 'Instalación de gas'),
          const CheckBoxWidget(title: 'Refrigeración o Aire acondicionado'),
          const CheckBoxWidget(title: 'Transporte o mudanza'),

          //TODO: reemplazar por boton para navegar
          // ButtonNavigateToRegister(
          //   text: 'Siguiente',
          //   colorText: Colors.black,
          //   redirect: () {
          //     Future.delayed(const Duration(seconds: 2), () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => const SignupScreen()));
          //     });
          //   },
          // )
        ]));
  }
}
