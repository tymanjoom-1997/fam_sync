
import 'package:fam_sync/core/functions/custom_toast.dart';
import 'package:fam_sync/core/functions/navigation.dart';
import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/core/widgets/login_btn.dart';
import 'package:fam_sync/features/Auth/presentation/auth_cubit/auth_state.dart';
import 'package:fam_sync/features/Auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:fam_sync/features/Auth/widgets/custom_textForm_field.dart';
import 'package:fam_sync/features/Auth/widgets/forgot_password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CustomLoginForm extends StatelessWidget {
  const CustomLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
         // showToast("Welcome back!");
          FirebaseAuth.instance.currentUser!.emailVerified? 
          customReplacementNavigate(context, "/homenavbar"):
          showToast("Please verify your email before logging in.");
        } else if(state is LoginFailerState){
          showToast(state.errorMessage);
        }  
      },
    builder: (context, state){
     
      AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

     return Padding(
      padding: const EdgeInsetsGeometry.only(left: 15, right: 15),
       child:Form(
       key: authCubit.loginFormkey ,
       child: Column(
      children: [
      
        CustomTextFormField(labelText: "Email",
        onChanged: (emailAddress){
          authCubit.emailAddress = emailAddress;
        }),
        CustomTextFormField(labelText: "Password",
        suffixIcon: IconButton(icon: Icon(
          authCubit.obscurePasswordTextValue == true?
          Icons.visibility_outlined
          : Icons.visibility_off_outlined,
        ),
        onPressed: () {
                    authCubit.obscurePasswordText();
                  },),
                  obscureText: authCubit.obscurePasswordTextValue,
        onChanged: (password){
          authCubit.password = password;
        }),
        SizedBox(height: 15,),
         ForgotPasswordTextWidget(),
         SizedBox(height: 100,),

         state is SignupLoadingState ?
          CircularProgressIndicator(color: Color(AppColors.coral),) :
         LoginBtn(
          onPressed: ()async{
        
          if(authCubit.loginFormkey.currentState!.validate()){
          await authCubit.loginWithEmailAndPassword();
          
         }

        }
      ),


      ],
    ) ,
     ),);
    }
    );
  }
}
