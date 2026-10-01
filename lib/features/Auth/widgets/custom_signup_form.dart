import 'package:fam_sync/core/functions/custom_toast.dart';
import 'package:fam_sync/core/functions/navigation.dart';
import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/core/widgets/SignUp_btn.dart';
import 'package:fam_sync/features/Auth/presentation/auth_cubit/auth_state.dart';
import 'package:fam_sync/features/Auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:fam_sync/features/Auth/widgets/custom_textForm_field.dart';
import 'package:fam_sync/features/Auth/widgets/terms_and_conditions_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CustomSignupForm extends StatelessWidget {
  const CustomSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignupSuccessState) {
          showToast("Successfully, Please check your email for verification");
          customReplacementNavigate(context, "/login");
        } else if(state is SignupFailerState){
          showToast(state.errorMessage);
        }    },
    builder: (context, state){
     
      AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

     return Form(
       key: authCubit.signupFormkey ,
       child: Column(
      children: [
        CustomTextFormField(labelText: "First name",
        onChanged: (firstName){
          authCubit.firstName = firstName;
        }),
        CustomTextFormField(labelText: "Last name",
        onChanged: (lastName){
          authCubit.lastName = lastName;
        }),
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
        TermsAndConditions() ,
         SizedBox(height: 100,),

         state is SignupLoadingState ?
          CircularProgressIndicator(color: Color(AppColors.coral),) :
         SignupBtn(
          onPressed: (){
         if(authCubit.termsAndConditionCheckBoxValue == true)
         {
          if(authCubit.signupFormkey.currentState!.validate()){
          authCubit.signUpWithEmailAndPassword();}
         }

        }
      ),


      ],
    ) ,
    );
    }
    );
  }
}