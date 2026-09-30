import 'package:fam_sync/core/utils/app_assets.dart';
import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Color(AppColors.warmCream),
    
       ),
      child:  Column(mainAxisAlignment: MainAxisAlignment.center,
       children: [
       Text.rich(
      TextSpan(
      children: [
        TextSpan(text: "Fam",
        style: CustomTextStyles.nunito400style30Coral),
        TextSpan(text: "Sync",
        style: CustomTextStyles.nunito400style30Teal),
      ]
    ),),

     Image(image:
      AssetImage(Assets.appIcon),
       width: 90,
       height: 90,),
       ],),
    );
  }
}