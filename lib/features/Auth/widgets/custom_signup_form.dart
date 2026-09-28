import 'package:fam_sync/core/widgets/SignUp_btn.dart';
import 'package:fam_sync/features/Auth/presentation/auth_cubit/auth_state.dart';
import 'package:fam_sync/features/Auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:fam_sync/features/Auth/widgets/custom_text_field.dart';
import 'package:fam_sync/features/Auth/widgets/terms_and_conditions_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignupForm extends StatelessWidget {
  const CustomSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
    builder: (context, state){
     return Form(child: Column(
      children: [
        CustomTextFormField(labelText: "First name",
        onChanged: (firstName){
          BlocProvider.of<AuthCubit>(context).firstName = firstName;
        }),
        CustomTextFormField(labelText: "Last name",
        onChanged: (lastName){
          BlocProvider.of<AuthCubit>(context).lastName = lastName;
        }),
        CustomTextFormField(labelText: "Email",
        onChanged: (emailAddress){
          BlocProvider.of<AuthCubit>(context).emailAddress = emailAddress;
        }),
        CustomTextFormField(labelText: "Password",
        onChanged: (password){
          BlocProvider.of<AuthCubit>(context).password = password;
        }),
        TermsAndConditions() ,
         SizedBox(height: 100,),
         SignupBtn(onPressed: (){
          BlocProvider.of<AuthCubit>(context).signUpWithEmailAndPassword();
         },) ,


      ],
    ) ,
    );
    }
    );
  }
}