import 'package:fam_sync/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget( {super.key, required this.text1,this.onTap, required this.text2});
 final String text1, text2;
 final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
     
    child:Align(
     child: Text.rich(
    TextSpan(
      children: [
        TextSpan(text: text1,
        style: CustomTextStyles.textSpanLogin1),
        TextSpan(text: text2,
        style: CustomTextStyles.textSpanLogin2),
      ]
    ),),
    ),);
  }
}