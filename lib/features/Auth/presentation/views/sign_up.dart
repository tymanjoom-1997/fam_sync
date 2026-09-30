import 'package:fam_sync/core/functions/navigation.dart';
import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/features/Auth/widgets/custom_signup_form.dart';
import 'package:fam_sync/features/Auth/widgets/have_an_account_widget.dart';
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
     SliverToBoxAdapter(child: CustomSignupForm(),),
        SliverToBoxAdapter(child: HaveAnAccountWidget(
          text1: "Already have an account? ",
          text2: " Log In",
          onTap: (){
            customReplacementNavigate(context, "/login");
          },),),
    
    ],
   ) ,),

   );
  }
}


