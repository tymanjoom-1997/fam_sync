import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyles {
  static const nunito400style30Teal = TextStyle(
   fontSize: 30,
   fontWeight: FontWeight.w500,
   color:  Color(AppColors.tealDark),
   fontFamily: 'Nunito',
   
  );

    static const nunito400style30Coral = TextStyle(
   fontSize: 30,
   fontWeight: FontWeight.w500,
   color:  Color(AppColors.coral),
   fontFamily: 'Nunito',
   
  );

   static const normalText = TextStyle(
   fontSize: 20,
   fontStyle: FontStyle.italic,
   fontWeight: FontWeight.w300,
   color:  Color(AppColors.textGray),
   fontFamily: 'NunitoMeduim',
   );
   static const normalTextWhite = TextStyle(
   fontSize: 20,
   fontStyle: FontStyle.italic,
   fontWeight: FontWeight.w300,
   color:  Color.fromARGB(255, 230, 224, 224),
   fontFamily: 'NunitoMeduim',
   );

   static const buttonText = TextStyle(
   fontSize: 20,
   fontWeight: FontWeight.w500,
   color:  Color(AppColors.warmCream),
   fontFamily: 'NunitoMeduim',
   );

   static const onBoardingText = TextStyle(
   fontSize: 28,
   fontWeight: FontWeight.w500,
   fontStyle: FontStyle.italic,
   color:  Color(AppColors.textGray),
   fontFamily: 'NunitoMeduim',
   );

     static const textField = TextStyle(
   fontSize: 18,
   fontWeight: FontWeight.w400,
   color:  Color(AppColors.lightGray),
   fontFamily: 'NunitoMeduim',
   );

        static const textSpan1 = TextStyle(
   fontSize: 12,
   fontWeight: FontWeight.w400,
   color:  Color(AppColors.textGray),
   fontFamily: 'Nunito',
   );
  
         static const textSpan2 = TextStyle(
   fontSize: 16,
   fontWeight: FontWeight.w400,
   color:  Color(AppColors.coral),
   decoration: TextDecoration.underline,
   fontFamily: 'Nunito',
   );
          static const textSpanLogin1 = TextStyle(
   fontSize: 16,
   fontWeight: FontWeight.w500,
   color:  Color(AppColors.textGray),
   fontFamily: 'Nunito',
   );
            
            static const textSpanLogin2 = TextStyle(
   fontSize: 16,
   fontWeight: FontWeight.w500,
   color:  Color(AppColors.coral),
   fontFamily: 'Nunito',
   );

     static const welcomeText1 = TextStyle(
   fontSize: 30,
   fontWeight: FontWeight.w500,
   color:  Color(AppColors.tealDark),
   fontFamily: 'Nunito',
   
  );

    static const welcomeText2 = TextStyle(
   fontSize: 16,
   fontWeight: FontWeight.w400,
   color:  Color(AppColors.lightGray),
   fontFamily: 'NunitoMeduim',
   );
}