import 'package:fam_sync/core/functions/navigation.dart';

void delayedNavigate(context,path){
Future.delayed(
          const Duration(seconds: 4),
          (){
            customReplacementNavigate(context, path);
          }
         );
}