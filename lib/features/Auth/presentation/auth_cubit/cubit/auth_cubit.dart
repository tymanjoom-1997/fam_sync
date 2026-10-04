import 'package:fam_sync/features/Auth/presentation/auth_cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthCubit extends Cubit<AuthState>{
  AuthCubit() : super(AuthInitial());

     String? firstName;
     String? lastName;
     String? emailAddress;
     String? password;
     bool? termsAndConditionCheckBoxValue=false;
     GlobalKey<FormState> signupFormkey = GlobalKey();
     GlobalKey<FormState> loginFormkey = GlobalKey();
     GlobalKey<FormState> resetPasswordFormkey = GlobalKey();
     bool obscurePasswordTextValue = true;

Future<void> signUpWithEmailAndPassword() async 
{ try {
   emit(SignupLoadingState());
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
       email: emailAddress!.trim(), 
       password: password!, );
       
       await addUserProfile();
       await verifyEmail();
       
        emit(SignupSuccessState()); }
    on FirebaseAuthException 
    catch (e) { 
      if (e.code == 'invalid-email') { 
        emit( SignupFailerState( errorMessage: 'The email address is invalid.', ), ); } 
        else if (e.code == 'email-already-in-use') { 
          emit( SignupFailerState( errorMessage: 'The account already exists for that email.', ), ); }
         else if (e.code == 'weak-password') { 
          emit( SignupFailerState( errorMessage: 'The password provided is too weak.', ), ); }
           else { 
            emit( SignupFailerState( errorMessage: 'Something went wrong. Please try again.', ), ); 
            } } catch (e) { 
              emit( SignupFailerState( errorMessage: e.toString(), ), ); 
} }


 Future<void> verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
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


 Future<void> loginWithEmailAndPassword() async {
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

 Future<void> resetPasswordWithLink() async {
    try {
      emit(ResetPasswordLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
      emit(ResetPasswordSuccessState());
    } catch (e) {
      emit(ResetPasswordFailureState(errMessage: e.toString()));
    }
  }

Future<void> addUserProfile() async {
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    await users.add({
      "email": emailAddress,
      "first_name": firstName,
      "last_name": lastName,
    });
  }


}
