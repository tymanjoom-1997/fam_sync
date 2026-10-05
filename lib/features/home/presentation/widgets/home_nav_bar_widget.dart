// ignore_for_file: unused_element

import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/features/explore/presentation/views/explore_view.dart';
import 'package:fam_sync/features/home/presentation/views/home_view.dart';
import 'package:fam_sync/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

PersistentTabController _controller = PersistentTabController(initialIndex: 0);

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        navBarStyle: NavBarStyle.style6,
         padding: const EdgeInsets.only(top: 8),
         resizeToAvoidBottomInset: true,
           animationSettings: const NavBarAnimationSettings(
            navBarItemAnimation: ItemAnimationSettings( 
                duration: Duration(milliseconds: 400),
                curve: Curves.ease,
            ),),

            
        backgroundColor: Color(AppColors.warmCream),
    );
  }
}


List<Widget> _buildScreens() {
        return [
         const  HomeView(),
         const ExploreView(),
          const ProfileView(),
        ];
    }

     List<PersistentBottomNavBarItem> _navBarsItems(){
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home_rounded),
          activeColorPrimary: Color(AppColors.tealDark),
          iconSize: 30,
          inactiveColorPrimary: Color(AppColors.primaryColor)),

         PersistentBottomNavBarItem(
          icon: Icon(Icons.app_registration_rounded),
          activeColorPrimary: Color(AppColors.tealDark),
          iconSize: 30,
          inactiveColorPrimary: Color(AppColors.primaryColor)),


          PersistentBottomNavBarItem(
          icon: Icon(Icons.person),
          activeColorPrimary: Color(AppColors.tealDark),
          iconSize: 30,
          inactiveColorPrimary: Color(AppColors.primaryColor)),
          

      ];
     }