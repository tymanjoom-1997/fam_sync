
import 'package:fam_sync/features/Auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:fam_sync/features/Auth/presentation/log_in.dart';
import 'package:fam_sync/features/Auth/presentation/views/sign_up.dart';
import 'package:fam_sync/features/home/presentation/widgets/home_view.dart';
import 'package:fam_sync/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:fam_sync/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes:[
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashView(),
    ),

     GoRoute(
    path: "/on_boarding",
    builder: (context, state) =>const OnBoardingView(),
    ),
    
     GoRoute(
    path: "/signUp",
     builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignUpView(),)
    ),

     GoRoute(
    path: "/logIn",
    builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const LogInView(),)
    ),

    
     GoRoute(
    path: "/home",
    builder: (context, state) =>  const HomeView(),)
    
  
] );

