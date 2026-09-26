import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.lableText});
  final String lableText;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsetsGeometry.only(right:8, left: 8, top:18  ),
    child: TextField(
      decoration: InputDecoration(
        labelText: lableText,
        labelStyle: CustomTextStyles.textField,
        border: getBorderStyle(),
        enabledBorder: getBorderStyle(),
        focusedBorder: getBorderStyle(),
      ),)
    );
  }
}

OutlineInputBorder getBorderStyle(){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Color(AppColors.textGray),
    )
  );
}