part of 'register_bloc.dart';

class RegisterState extends Equatable {
  final bool isChecking;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;

  const RegisterState(
    this.isChecking,
    this.isSubmitting,
    this.isSuccess,
    this.isFailure,
  );

  RegisterState copyWith({
    bool? isChecking,
    bool? isSubmitting,
    bool? isSuccess,
    bool? isFailure,
  }) {
    return RegisterState(
      isChecking ?? this.isChecking,
      isSubmitting ?? this.isSubmitting,
      isSuccess ?? this.isSuccess,
      isFailure ?? this.isFailure,
    );
  }

  @override
  List<Object> get props => [];
}
