import 'package:changapp/screens/home_screen.dart';
import 'package:changapp/widgets/button_widget.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 5.0),
      child: Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset('assets/changappLogo.png', width: 175),
            const SizedBox(
              height: 6,
            ),
            const Text("Datos Personales",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
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
                        height: 20,
                      ),
                      ButtonWidget(
                        text: 'Siguiente',
                        colorText: Colors.black,
                        action: () {
                          Future.delayed(const Duration(seconds: 2), () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          });
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ])),
    );
  }
}
