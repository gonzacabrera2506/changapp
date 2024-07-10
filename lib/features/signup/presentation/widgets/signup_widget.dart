import 'package:changapp/shared/custom_button_widget.dart';
import 'package:changapp/shared/custom_row_widget.dart';
import 'package:changapp/shared/custom_switch_widget.dart';
import 'package:changapp/shared/custom_textfield_widget.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool light = false;

  void _updateLabelCustomButtom(bool value) {
    setState(() {
      light = value;
    });
    if (value) {
      print('hola');
    } else {
      print('hola 2');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomRowWidget(
                alignment: MainAxisAlignment.center,
                widgets: [Image.asset('assets/changappLogo.png', width: 180)]),
            const SizedBox(
              height: 10,
            ),
            const CustomRowWidget(
                alignment: MainAxisAlignment.center,
                widgets: [
                  Text(
                    "Datos Personales",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ]),
            const SizedBox(
              height: 5,
            ),
            const CustomRowWidget(
              alignment: MainAxisAlignment.center,
              widgets: [
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
            const CustomRowWidget(
              alignment: MainAxisAlignment.center,
              widgets: [
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
            const CustomRowWidget(
              alignment: MainAxisAlignment.center,
              widgets: [
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
            const CustomRowWidget(
              alignment: MainAxisAlignment.center,
              widgets: [
                Icon(Icons.phone_outlined),
                SizedBox(width: 3),
                TextFieldWidget(
                  hintText: 'Teléfono de contacto',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomRowWidget(
                alignment: MainAxisAlignment.center,
                widgets: [
                  Text(
                    "Datos de login",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ]),
            const SizedBox(
              height: 5,
            ),
            const CustomRowWidget(
              alignment: MainAxisAlignment.center,
              widgets: [
                Icon(Icons.email_outlined),
                SizedBox(width: 3),
                TextFieldWidget(
                  hintText: 'Email',
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomRowWidget(
              alignment: MainAxisAlignment.center,
              widgets: [
                Icon(Icons.lock_outline),
                SizedBox(width: 3),
                TextFieldWidget(
                  hintText: 'Password',
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomRowWidget(
              alignment: MainAxisAlignment.center,
              widgets: [
                CustomSwitchButton(
                  action: _updateLabelCustomButtom,
                ),
                const SizedBox(width: 2),
                const Text('Deseo demandar Changas'),
                const SizedBox(width: 18),
                CustomButtonWidget(
                  text: 'Siguiente',
                  colorText: Colors.black,
                  action: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
