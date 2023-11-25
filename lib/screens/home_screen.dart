import 'package:changapp/screens/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
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
