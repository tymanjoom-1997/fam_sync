
import 'package:fam_sync/core/utils/app_text_styles.dart';
import 'package:fam_sync/features/Auth/widgets/customCheckBox.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
    CustomCheckBox(),
    Text.rich(TextSpan(
      children:[
        TextSpan(
      text: "I have agree to our ",
      style: CustomTextStyles.textSpan1),
       TextSpan(
      text: "Terms and conditions ",
      style: CustomTextStyles.textSpan2),
      ]
       ),),
    ],
    );
  }
}
