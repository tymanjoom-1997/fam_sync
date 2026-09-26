
import 'package:fam_sync/core/functions/navigation.dart';

import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/core/widgets/custom_btn.dart';
import 'package:fam_sync/core/widgets/SignUp_btn.dart';
import 'package:fam_sync/core/widgets/login_btn.dart';
import 'package:fam_sync/features/on_boarding/data/models/on_bording_model.dart';
import 'package:fam_sync/features/on_boarding/presentation/views/functions/on_bording_visited.dart';
import 'package:fam_sync/features/on_boarding/widgets/on_boarding_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget  {
  const OnBoardingView ({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
 final PageController _controller = PageController(initialPage: 0);
 int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: Color(AppColors.warmCream),
      ),
      child: ListView(
      children: [
        
        OnBoardingBody(
          onPageChanged: (index){
            setState(() {
              
            });
            currentIndex = index;
          },
          controller:_controller ,),
        SizedBox(height: 150,),
        currentIndex == onBoardingData.length -1 ? 
        Column(
          children: [
            SignupBtn(
              onPressed: () {
               onBoardingVisited();
                customReplacementNavigate(context, "/signUp");
              },
            ),
            LoginBtn(
               onPressed: () {
                onBoardingVisited();
                 customReplacementNavigate(context, "/logIn");
               },
            )
          ],
        )
        : CustomBtn(
          onPressed: (){
            _controller.nextPage(duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
          },
        ),
        
      ],
     ),),
    
    );
  }
}


