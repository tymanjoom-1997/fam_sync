import 'package:fam_sync/core/database/cash/cashe_helper.dart';
import 'package:fam_sync/core/functions/check_state_changes.dart';
import 'package:fam_sync/core/routes/app_router.dart';
import 'package:fam_sync/core/services/service_locator.dart';
import 'package:fam_sync/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';



void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
 await getIt<CacheHelper>().init();
 WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
checkStateChanges();
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
