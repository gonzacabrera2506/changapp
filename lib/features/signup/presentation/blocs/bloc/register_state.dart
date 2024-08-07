part of 'register_bloc.dart';

class RegisterState extends Equatable {
  final bool isChecking;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;

  const RegisterState({
    this.isChecking = false,
    this.isSubmitting = false,
    this.isSuccess = false,
    this.isFailure = false,
  });

  RegisterState copyWith({
    bool? isChecking,
    bool? isSubmitting,
    bool? isSuccess,
    bool? isFailure,
  }) {
    return RegisterState(
      isChecking: isChecking ?? this.isChecking,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure,
    );
  }

  @override
  List<Object> get props => [
        isChecking,
        isSubmitting,
        isSuccess,
        isFailure,
      ];
}
