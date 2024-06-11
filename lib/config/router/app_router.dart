import 'package:changapp/features/login/presentation/screens/login_screen.dart';
import 'package:changapp/features/home/presentation/screens.dart';
import 'package:changapp/features/signup/presentation/screens/signup_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/hola',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/login',
    name: LoginScreen.name,
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/',
    name: SignupScreen.name,
    builder: (context, state) => const SignupScreen(),
  )
]);
