import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget{
  const CustomBtn({super.key, this.onPressed});
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
  
  return Container(
    width: 250,
    height: 85,
    padding: EdgeInsets.only(bottom: 30),
    child: ElevatedButton(onPressed: onPressed,
  style: ElevatedButton.styleFrom(
    backgroundColor:Color(AppColors.tealDark),
    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20),)
  ),
   child: const Text("Next", style: CustomTextStyles.normalTextWhite),
  ),
  );
  }
  
} 