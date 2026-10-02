import 'package:fam_sync/core/functions/navigation.dart';
import 'package:fam_sync/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordTextWidget extends StatelessWidget {
  const ForgotPasswordTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        customReplacementNavigate(context, "/forgotpassword");
      },
    child: Align(
      alignment: Alignment.centerRight,
    child: Text(
      "Forgot Password?",
      style: CustomTextStyles.textSpan2,
    ),),);
  }
}