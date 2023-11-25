import 'package:changapp/screens/login_screen.dart';
import 'package:changapp/screens/screens.dart';
import 'package:changapp/screens/signup_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/login',
    name: LoginScreen.name,
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/signup',
    name: SignupScreen.name,
    builder: (context, state) => const SignupScreen(),
  )
]);
