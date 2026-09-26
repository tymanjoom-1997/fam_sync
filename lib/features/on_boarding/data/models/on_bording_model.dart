class OnBoardingModel{
  final String imagePath;
  final String title;

  OnBoardingModel({
    required this.imagePath, required this.title});

}

List<OnBoardingModel> onBoardingData = [
 
 OnBoardingModel(
   imagePath: 'assets/images/onboarding1.png',
   title:  "Take control of your tasks and achieve your goals"
   ),
 OnBoardingModel(
   imagePath: 'assets/images/onboarding2.png',
   title:  "Never miss what matters"
   ),

 OnBoardingModel(
   imagePath: 'assets/images/onboarding3.png',
   title:  "One private place for everyday life"
   ),

];