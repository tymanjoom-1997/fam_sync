import 'package:fam_sync/features/Auth/presentation/auth_cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState>{
  AuthCubit() : super(AuthInitial());

     String? firstName;
     String? lastName;
     String? emailAddress;
     String? password;
     bool? termsAndConditionCheckBoxValue=false;
     GlobalKey<FormState> signupFormkey = GlobalKey();
     GlobalKey<FormState> loginFormkey = GlobalKey();
     bool obscurePasswordTextValue = true;

 Future<void> signUpWithEmailAndPassword() async{
  try {
    emit(SignupLoadingState());
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailAddress!,
    password: password!,
  );
  emit(SignupSuccessState());
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    emit(SignupFailerState(errorMessage: 'The password provided is too weak.'));
     
  } else if (e.code == 'email-already-in-use') {
    emit(SignupFailerState(errorMessage: 'The account already exists for that email.'));
   
  }
} catch (e) {
  emit(SignupFailerState(errorMessage: e.toString()));
}
 }


void updateTermsAndConditionCheckBox({required  newValue}){
  termsAndConditionCheckBoxValue = newValue;
  emit(TermsAndConditionCheckBoxState());
}

  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }


 Future<void> loginWithEmailAndPassword()async{
try {
      emit(LoginLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(LoginSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFailerState(errorMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(LoginFailerState(
            errorMessage: 'Wrong password provided for that user.'));
      } else {
        emit(LoginFailerState(errorMessage: 'Check your Email and password!'));
      }
    } catch (e) {
      emit(
        LoginFailerState(
          errorMessage: e.toString(),
        ),
      );
    }
}
}
