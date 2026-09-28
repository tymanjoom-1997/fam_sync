import 'package:fam_sync/features/Auth/presentation/auth_cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState>{
  AuthCubit() : super(AuthInitial());

   late String? firstName;
    late String? lastName;
    late String? emailAddress;
    late String? password;

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
}