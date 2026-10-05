
import 'package:fam_sync/core/functions/navigation.dart';
import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/features/Auth/widgets/custom_login_form.dart';
import 'package:fam_sync/features/Auth/widgets/have_an_account_widget.dart';
import 'package:fam_sync/features/Auth/widgets/welcom_banner.dart';
import 'package:fam_sync/features/Auth/widgets/welcome_login.dart';
import 'package:flutter/material.dart';

class LogInView extends StatelessWidget{
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(AppColors.warmCream),
     body: CustomScrollView(
       slivers: [
        SliverToBoxAdapter(child:SizedBox(height: 50,)),
       SliverToBoxAdapter(child: WelcomeBanner()),
       SliverToBoxAdapter(child: SizedBox(height: 20,),),
       SliverToBoxAdapter(child: WelcomeLogin()),
       SliverToBoxAdapter(child: SizedBox(height: 20,),),
      SliverToBoxAdapter(child: CustomLoginForm()),
      SliverToBoxAdapter(child: HaveAnAccountWidget(
        text1: "Don't have an account? ",
        text2: "Sign Up",
        onTap: (){
          customReplacementNavigate(context, "signup");
        }
      ),),
       ],
     )
    );
  }  
}


