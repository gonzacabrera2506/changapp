import 'package:changapp/features/signup/presentation/widgets/signup_widget.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  static const String name = 'signup_screen';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 30,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        //scrollDirection: Axis.horizontal,
        child: Center(
            child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.95,
          ),
          child: const Signup(),
        )),
      ),
    );
  }
}
