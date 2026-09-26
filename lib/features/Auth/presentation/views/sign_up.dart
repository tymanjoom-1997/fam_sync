import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/core/widgets/SignUp_btn.dart';
import 'package:fam_sync/features/Auth/widgets/custom_text_field.dart';
import 'package:fam_sync/features/Auth/widgets/have_an_account_widget.dart';
import 'package:fam_sync/features/Auth/widgets/terms_and_conditions_widget.dart';
import 'package:fam_sync/features/Auth/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget{
  const SignUpView ({super.key});

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
   body: Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
   color: Color(AppColors.warmCream),
   child: CustomScrollView(
    slivers: [
    SliverToBoxAdapter(child: SizedBox(height: 100,),),
    SliverToBoxAdapter(child: WelcomeText(text: "Create Account",),),
    SliverToBoxAdapter(child: SizedBox(height: 40,),),
    SliverToBoxAdapter(child: CustomTextField(lableText: "First name",),),
     SliverToBoxAdapter(child: CustomTextField(lableText: "Last name",),),
      SliverToBoxAdapter(child: CustomTextField(lableText: "Email",),),
       SliverToBoxAdapter(child: CustomTextField(lableText: "Password",),),

       SliverToBoxAdapter(child:TermsAndConditions() ,),
           SliverToBoxAdapter(child: SizedBox(height: 100,),),
        SliverToBoxAdapter(child:SignupBtn(
          onPressed: (){},
        ) ,),
        SliverToBoxAdapter(child: HaveAnAccountWidget(
          text1: "Already have an account? ",
          text2: " Log In",),),
    
    ],
   ) ,),

   );
  }
}


