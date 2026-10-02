class AuthState {}
final class AuthInitial extends AuthState{}
final class SignupLoadingState extends AuthState{}
final class SignupSuccessState extends AuthState{}
final class SignupFailerState extends AuthState{
  final String errorMessage;
   SignupFailerState({
    required this.errorMessage
  });
}
final class TermsAndConditionCheckBoxState extends AuthState{}

final class ObscurePasswordTextUpdateState extends AuthState {}

final class LoginLoadingState extends AuthState{}
final class LoginSuccessState extends AuthState{}
final class LoginFailerState extends AuthState{
  final String errorMessage;
   LoginFailerState({
    required this.errorMessage
  });
}

final class ResetPasswordLoadingState extends AuthState {}

final class ResetPasswordSuccessState extends AuthState {}

final class ResetPasswordFailureState extends AuthState {
  final String errMessage;

  ResetPasswordFailureState({required this.errMessage});
}
