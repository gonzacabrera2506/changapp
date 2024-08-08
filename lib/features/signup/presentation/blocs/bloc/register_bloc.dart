import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final dio = Dio();

  RegisterBloc() : super(const RegisterState()) {
    on<CheckEmailExists>(_onCheckEmailExists);
  }

  void _onCheckEmailExists(
      CheckEmailExists event, Emitter<RegisterState> emit) async {
    emit(state.copyWith(isChecking: true, isFailure: false));
    try {
      final emailExists = await _checkEmailExists(event.email);
      //IF SI EXSITE EMAIL CAMBIAR ESTADO
    } catch (e) {}
  }

  Future<bool> _checkEmailExists(String email) async {
    //CONSUMIR API REST DE VERIFICACION DE EMAIL EXISTENTE
    /*
    fetch('https://jsonplaceholder.typicode.com/todos/1')
      .then(response => response.json())
      .then(json => console.log(json))
    */
    Response response =
        await dio.get('https://jsonplaceholder.typicode.com/todos/1');
    print(response.data.toString());

    return false;
  }
}
