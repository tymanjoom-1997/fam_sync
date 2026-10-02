import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/features/Auth/widgets/custom_forgot_form.dart';
import 'package:fam_sync/features/Auth/widgets/forgot_pass_image.dart';
import 'package:fam_sync/features/Auth/widgets/forgot_pass_subtitle.dart';
import 'package:fam_sync/features/Auth/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColors.warmCream),
      body: CustomScrollView(

        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 100),),
          SliverToBoxAdapter(child: WelcomeText(text: "Forgot Password?",)),
          SliverToBoxAdapter(child: SizedBox(height: 30),),
          SliverToBoxAdapter(child: ForgotPasswordImage(),),
           SliverToBoxAdapter(child: SizedBox(height: 40),),
           SliverToBoxAdapter(child: ForgotPasswordSubTitle(),),
           SliverToBoxAdapter(child: CustomForgotForm(),),
          

          
         ],),
     );
  }
}

