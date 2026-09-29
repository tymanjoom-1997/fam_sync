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