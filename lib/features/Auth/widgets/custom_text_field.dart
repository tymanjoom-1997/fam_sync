import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.labelText,this.onChanged, this.onFieldSubmitted});
  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsetsGeometry.only(right:8, left: 8, top:18  ),
    child: TextFormField(
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        labelText: labelText,
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