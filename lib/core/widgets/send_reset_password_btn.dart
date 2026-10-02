import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SendResetPasswordBtn extends StatelessWidget{
  const SendResetPasswordBtn({super.key, this.onPressed});
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
  
  return Container(
    width: double.infinity,
    height: 85,
    padding: EdgeInsets.only(bottom: 30),
    child: ElevatedButton(onPressed: onPressed,
  style: ElevatedButton.styleFrom(
    backgroundColor:Color(AppColors.tealDark),
    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20),)
  ),
   child: const Text("Send Reset Password Email", style: CustomTextStyles.buttonText,),
  ),
  );
  }
  
} 