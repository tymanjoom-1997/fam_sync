
import 'package:fam_sync/core/functions/custom_toast.dart';
import 'package:fam_sync/core/functions/navigation.dart';
import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/core/widgets/send_reset_password_btn.dart';
import 'package:fam_sync/features/Auth/presentation/auth_cubit/auth_state.dart';
import 'package:fam_sync/features/Auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:fam_sync/features/Auth/widgets/custom_textForm_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CustomForgotForm extends StatelessWidget {
  const CustomForgotForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
       if (state is ResetPasswordSuccessState) {
          showToast("Check Your Email To Reset Your Password");
          customReplacementNavigate(context, "/login");
        } else if (state is ResetPasswordFailureState) {
          showToast(state.errMessage);
        }
      },
    builder: (context, state){
     
      AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

     return Padding(
      padding: const EdgeInsetsGeometry.only(left: 15, right: 15),
       child:Form(
       key: authCubit.resetPasswordFormkey ,
       child: Column(
      children: [
      
        CustomTextFormField(labelText: "Email",
        suffixIcon: Icon(Icons.email_outlined, color: Color(AppColors.coral), ),
        onChanged: (emailAddress){
          authCubit.emailAddress = emailAddress;
        }),
       
        SizedBox(height: 200,),
  

         state is ResetPasswordLoadingState ?
          CircularProgressIndicator(color: Color(AppColors.coral),) :
         SendResetPasswordBtn(
          onPressed: (){
        
          if(authCubit.resetPasswordFormkey.currentState!.validate()){
          authCubit.resetPasswordWithLink();
          
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
