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
      body: const SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Signup(),
            ),
          ],
        )),
      ),
    );
  }
}
