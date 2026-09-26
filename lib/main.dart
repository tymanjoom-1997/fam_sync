import 'package:fam_sync/core/database/cash/cashe_helper.dart';
import 'package:fam_sync/core/routes/app_router.dart';
import 'package:fam_sync/core/services/service_locator.dart';
import 'package:flutter/material.dart';



void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
 await getIt<CacheHelper>().init();
  runApp(FamSync());
}

class FamSync extends StatelessWidget{
  const FamSync ({super.key});


  @override
  Widget build (BuildContext context){
    return MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerConfig : router,
    );
  }
}
