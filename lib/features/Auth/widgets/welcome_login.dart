
import 'package:fam_sync/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class WelcomeLogin extends StatelessWidget {
  const WelcomeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
         padding: const EdgeInsets.only(left: 8.0, right: 8.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Text("Welcome Back!", style: CustomTextStyles.welcomeText1),
             SizedBox(height: 10,),
             Text("Please log in to your account", style: CustomTextStyles.welcomeText2),
             SizedBox(height: 10,),

           ],
         ),
       );
  }
}