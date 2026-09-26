
import 'package:fam_sync/core/utils/app_text_styles.dart';
import 'package:fam_sync/features/on_boarding/data/models/on_bording_model.dart';
import 'package:fam_sync/features/on_boarding/widgets/customSmothPageIndicator.dart';
import 'package:flutter/material.dart';


class OnBoardingBody extends StatelessWidget{
   OnBoardingBody ({super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;


  @override
  Widget build(BuildContext context) {
   return  SizedBox(
    height: 500,
    child: PageView.builder(
      onPageChanged: onPageChanged,
      controller: controller,
    itemCount: onBoardingData.length,
    itemBuilder: (context, index){
      return Column(
       
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Container(
        width:400,
        height:300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage(onBoardingData[index].imagePath),
          fit: BoxFit.fill ),
        ),
       ),
    
        SizedBox(height: 30,),
         Customsmothpageindicator(controller: controller),
        SizedBox(height:20) ,
        Text(onBoardingData[index].title , style:CustomTextStyles.onBoardingText,
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        ),
        
      ],
      );
    }
   ));
  }
}