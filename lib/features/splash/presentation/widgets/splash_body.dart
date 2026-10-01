import 'package:fam_sync/core/database/cash/cashe_helper.dart';
import 'package:fam_sync/core/functions/delayedNavigate.dart';
import 'package:fam_sync/core/services/service_locator.dart';
import 'package:fam_sync/core/utils/app_assets.dart';
import 'package:fam_sync/core/utils/app_text_styles.dart';
import 'package:fam_sync/core/utils/size_config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});
  @override
 State<SplashBody> createState() =>  _SplashViewState();}
    
    
 class _SplashViewState extends State<SplashBody> {
       @override  
         void initState(){
          bool isOnBoardingVisited = getIt<CacheHelper>().getData(key: "isOnBoardingVisited")?? false;
         if(isOnBoardingVisited == true){
         FirebaseAuth.instance.currentUser==null ?
          delayedNavigate(context,"/login")
          : FirebaseAuth.instance.currentUser!.emailVerified == true ?
          delayedNavigate(context,"/home") : delayedNavigate(context, "/login") ;
         }else{
         delayedNavigate(context, "/on_boarding");}
         super.initState();
         }
  



  @override
  Widget build(BuildContext context) {
   SizeConfig().init(context);
  
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.splashImage),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          const SizedBox(height: 60),
          Image(
            image: AssetImage(Assets.appIcon),
            width: 90,
            height: 90,
          ),
          const SizedBox(height: 450),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '" Welcom to ',
                  style: CustomTextStyles.nunito400style30Teal,
                ),
                const Text(
                  'Fam',
                  style: CustomTextStyles.nunito400style30Coral,
                ),
                const Text(
                  'Sync "',
                  style: CustomTextStyles.nunito400style30Teal,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: AnimatedTextKit(
              repeatForever: false,
              pause: Duration(seconds: 2),
              animatedTexts: [
                TyperAnimatedText(
                  'Plan together\nStay connected \n Get things done',
                  textAlign: TextAlign.center,
                  textStyle: CustomTextStyles.normalText,
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  
  }
}




