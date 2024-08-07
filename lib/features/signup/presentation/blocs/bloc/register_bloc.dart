import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
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
    return false;
  }
}
