import 'package:changapp/features/home/presentation/home_screen.dart';
import 'package:changapp/shared/custom_button_widget.dart';
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
      padding: const EdgeInsets.all(8.0),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.person_outline),
                          SizedBox(width: 3),
                          TextFieldWidget(
                            hintText: 'Nombre/s',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(width: 3),
                          TextFieldWidget(
                            hintText: 'Apellido',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.badge_outlined),
                          SizedBox(width: 3),
                          TextFieldWidget(
                            hintText: 'Nombre fantasia(opcional)',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          SizedBox(width: 3),
                          TextFieldWidget(
                            hintText: 'Dirección',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_city_outlined),
                          const SizedBox(width: 3),
                          CustomDropDownButton(),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.phone_outlined),
                          SizedBox(width: 3),
                          TextFieldWidget(
                            hintText: 'Teléfono de contacto',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.email_outlined),
                          SizedBox(width: 3),
                          TextFieldWidget(
                            hintText: 'Email',
                          ),
                        ],
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
