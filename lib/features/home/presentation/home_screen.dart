import 'package:changapp/features/login/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      context.pushNamed(LoginScreen.name);
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
          crossAxisAlignment:
              CrossAxisAlignment.center, // Centra horizontalmente
          children: [
            Image.asset('assets/changappLogo.png'),
            const Text('Changas y trabajos pequeños en el hogar...y más!!',
                style: TextStyle(fontSize: 13)),
          ],
        ),
      ),
    );
  }
}
