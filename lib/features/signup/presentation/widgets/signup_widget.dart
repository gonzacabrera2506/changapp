import 'package:changapp/features/home/presentation/home_screen.dart';
import 'package:changapp/shared/custom_button_widget.dart';
import 'package:changapp/shared/custom_container_widget.dart';
import 'package:changapp/shared/custom_dropDownButton_widget.dart';
import 'package:changapp/shared/custom_textfield_widget.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                        icon: Icon(Icons.person_outline),
                        hintText: 'Nombre/s',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextFieldWidget(
                        icon: Icon(Icons.person),
                        hintText: 'Apellido',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextFieldWidget(
                        icon: Icon(Icons.badge_outlined),
                        hintText: 'Nombre fantasia(opcional)',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextFieldWidget(
                        icon: Icon(Icons.location_on_outlined),
                        hintText: 'Dirección',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomDropDownButton(),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextFieldWidget(
                        icon: Icon(Icons.phone),
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
