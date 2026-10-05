
import 'package:fam_sync/features/Auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:fam_sync/features/Auth/presentation/views/log_in_view.dart';
import 'package:fam_sync/features/Auth/presentation/views/forgot_password_view.dart';
import 'package:fam_sync/features/Auth/presentation/views/sign_up_view.dart';
import 'package:fam_sync/features/home/presentation/views/home_view.dart';
import 'package:fam_sync/features/home/presentation/widgets/home_nav_bar_widget.dart';
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
    path: "/signup",
     builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignUpView(),)
    ),

     GoRoute(
    path: "/login",
    builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const LogInView(),)
    ),

    
     GoRoute(
    path: "/forgotpassword",
    builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const ForgotPasswordView(),),),
    
    GoRoute(
    path: "/homenavbar",
    builder: (context, state) =>  const HomeNavBarWidget(),),
      GoRoute(
    path: "/home",
    builder: (context, state) =>  const HomeView(),)
] );

