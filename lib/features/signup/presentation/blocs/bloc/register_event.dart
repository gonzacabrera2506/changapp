part of 'register_bloc.dart';

sealed class RegisterEvent extends Equatable {
  const RegisterEvent();
}

class CheckEmailExists extends RegisterEvent {
  final String email;

  const CheckEmailExists({required this.email});

  @override
  List<Object?> get props => [email];
}

class RegisterUser extends RegisterEvent {
  final String nombre;
  final String apellido;
  final String nombreFantasia;
  final String telefono;
  final String email;
  final String password;

  const RegisterUser(
      {required this.nombre,
      required this.apellido,
      required this.nombreFantasia,
      required this.telefono,
      required this.email,
      required this.password});

  @override
  List<Object> get props =>
      [nombre, apellido, nombreFantasia, telefono, email, password];
}
