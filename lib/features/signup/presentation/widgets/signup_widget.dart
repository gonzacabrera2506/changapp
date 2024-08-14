import 'package:changapp/features/signup/presentation/blocs/bloc/register_bloc.dart';
import 'package:changapp/shared/custom_button_widget.dart';
import 'package:changapp/shared/custom_row_widget.dart';
import 'package:changapp/shared/custom_switch_widget.dart';
import 'package:changapp/shared/custom_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:motion_toast/motion_toast.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nombre = TextEditingController();
  final TextEditingController _apellido = TextEditingController();
  final TextEditingController _nombreFantasia = TextEditingController();
  final TextEditingController _telefono = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool light = false;
  String buttonText = "Siguiente";
  bool isFormInvalid = false;

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
      child: BlocProvider(
          create: (context) => RegisterBloc(),
          child: Builder(builder: (BuildContext newContext) {
            return BlocListener<RegisterBloc, RegisterState>(
              listener: (context, state) {
                if (state.isFailure) {
                  MotionToast.error(
                    title: const Text('Error'),
                    description: Text(state.errorMessage),
                  ).show(context);
                }
              },
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
                        widgets: [
                          Image.asset('assets/changappLogo.png', width: 180)
                        ]),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomRowWidget(
                        alignment: MainAxisAlignment.center,
                        widgets: [
                          Text(
                            "Datos Personales",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
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
                          controller: _nombre,
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
                          controller: _apellido,
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
                          controller: _nombreFantasia,
                          fieldName: "nombre fantasía",
                          hintText: 'Nombre fantasia',
                          validation: ValidationBuilder(requiredMessage: "Hola")
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
                        const Icon(Icons.phone_outlined),
                        const SizedBox(width: 1),
                        TextFieldWidget(
                          controller: _telefono,
                          fieldName: "teléfono",
                          hintText: 'Teléfono de contacto',
                          validation:
                              ValidationBuilder().required().phone().build(),
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
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
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
                          controller: _email,
                          fieldName: "email",
                          hintText: 'Email',
                          validation:
                              ValidationBuilder().required().email().build(),
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
                          controller: _password,
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
                          action: () async {
                            if (light && isFormInvalid) {
                              print(isFormInvalid);
                              return;

                              try {
                                final email = _email.text;
                                newContext
                                    .read<RegisterBloc>()
                                    .add(CheckEmailExists(email: email));
                              } catch (e) {
                                print(e);
                              }
                              // LOGICA DE REGISTRO DE USUARIO QUE DESEA VER Y DEMANDAR CHANGAS
                            } else {
                              //LOGICA DE USUARIO OFERTANTE DE CHANGAS - REDIRECCION A SCREEN DE SELECCION DE CHANGAS
                              print(_formKey.currentState!.validate());
                              //context.push('/choose-jobs');
                            }
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          })),
    );
  }
}
