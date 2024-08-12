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
      Response response = await dio.get(
          'http://localhost:3000/register/email-exists?email=${event.email}');
      if (response.statusCode == 200) {
        emit(state.copyWith(isChecking: false, isSuccess: true));
      }
    } on DioException catch (e) {
      if (e.response != null && e.response?.statusCode == 400) {
        emit(state.copyWith(
            isChecking: false,
            isFailure: true,
            errorMessage: 'El email ingresado ya existe'));
      } else if (e.response != null && e.response?.statusCode == 500) {
        emit(state.copyWith(
            isChecking: false,
            isFailure: true,
            errorMessage:
                'Error en el registro. Intente nuevamente mas tarde.'));
      }
    }
  }
}
