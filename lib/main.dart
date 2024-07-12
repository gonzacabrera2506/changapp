import 'package:changapp/config/router/app_router.dart';
import 'package:changapp/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

void main() {
  ValidationBuilder.setLocale('es_AR');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ChangApp',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).theme(),
    );
  }
}
