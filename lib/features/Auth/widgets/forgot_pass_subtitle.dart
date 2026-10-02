import 'package:fam_sync/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordSubTitle extends StatelessWidget {
  const ForgotPasswordSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "Enter your email address below \nto receive password reset instructions.",
        style: 
          CustomTextStyles.textSpan1,
        
        textAlign: TextAlign.center,
    ),);
  }
}
