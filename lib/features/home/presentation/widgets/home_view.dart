import 'package:fam_sync/core/functions/navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView  extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              FirebaseAuth.instance.signOut();
              customReplacementNavigate(context, "/login");
            },
          ),
        ],
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Welcome to the Home View!'),
      ),
    );
  }
}