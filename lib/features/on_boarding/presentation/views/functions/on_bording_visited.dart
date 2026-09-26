 
 import 'package:fam_sync/core/database/cash/cashe_helper.dart';
import 'package:fam_sync/core/services/service_locator.dart';

void onBoardingVisited(){
getIt<CacheHelper>().saveData(
  key: "isOnBoardingVisited", value: true  );
 }
 
 