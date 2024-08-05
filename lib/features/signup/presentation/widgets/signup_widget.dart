import 'package:changapp/shared/custom_button_widget.dart';
import 'package:changapp/shared/custom_row_widget.dart';
import 'package:changapp/shared/custom_switch_widget.dart';
import 'package:changapp/shared/custom_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:go_router/go_router.dart';
import 'package:motion_toast/motion_toast.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool light = false;
  String buttonText = "Siguiente";

  void _updateLabelCustomButtom(bool value) {
    setState(() {
      light = value;
      buttonText = value ? 'Registrar' : 'Siguiente';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
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
            CustomRowWidget(
              alignment: MainAxisAlignment.center,
              widgets: [
                const Icon(Icons.person_outline),
                const SizedBox(width: 1),
                TextFieldWidget(
                  fieldName: "nombre",
                  hintText: 'Nombre/s',
                  validation: ValidationBuilder()
                      .required()
                      .minLength(3)
                      .maxLength(30)
                      .build(),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomRowWidget(
              alignment: MainAxisAlignment.center,
              widgets: [
                const Icon(Icons.person),
                const SizedBox(width: 1),
                TextFieldWidget(
                  fieldName: "apellido",
                  hintText: 'Apellido',
                  validation: ValidationBuilder()
                      .required()
                      .minLength(3)
                      .maxLength(30)
                      .build(),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomRowWidget(
              alignment: MainAxisAlignment.center,
              widgets: [
                const Icon(Icons.badge_outlined),
                const SizedBox(width: 1),
                TextFieldWidget(
                  fieldName: "nombre fantasía",
                  hintText: 'Nombre fantasia',
                  validation:
                      ValidationBuilder().minLength(3).maxLength(30).build(),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomRowWidget(
              alignment: MainAxisAlignment.center,
              widgets: [
                const Icon(Icons.phone_outlined),
                const SizedBox(width: 1),
                TextFieldWidget(
                  fieldName: "teléfono",
                  hintText: 'Teléfono de contacto',
                  validation: ValidationBuilder().required().phone().build(),
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
            CustomRowWidget(
              alignment: MainAxisAlignment.center,
              widgets: [
                const Icon(Icons.email_outlined),
                const SizedBox(width: 1),
                TextFieldWidget(
                  fieldName: "email",
                  hintText: 'Email',
                  validation: ValidationBuilder().required().email().build(),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomRowWidget(
              alignment: MainAxisAlignment.center,
              widgets: [
                const Icon(Icons.lock_outline),
                const SizedBox(width: 1),
                TextFieldWidget(
                  obscureText: true,
                  fieldName: "password",
                  hintText: 'Password',
                  validation: ValidationBuilder()
                      .required()
                      .minLength(6)
                      .maxLength(15)
                      .build(),
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
                const SizedBox(width: 15),
                CustomButtonWidget(
                  text: buttonText,
                  colorText: Colors.black,
                  action: () {
                    if (light && _formKey.currentState!.validate()) {
                      print("form valido");
                      // LOGICA DE REGISTRO DE USUARIO QUE DESEA VER Y DEMANDAR CHANGAS
                    } else {
                      //LOGICA DE USUARIO OFERTANTE DE CHANGAS - REDIRECCION A SCREEN DE SELECCION DE CHANGAS
                      print("form invalido");
                      context.push('/choose-jobs');
                    }

                    /*
                    MotionToast.success(
                      title: const Text('Hola mundo'),
                      description: const Text('Descripcion'),
                    ).show(context);
                    */
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
