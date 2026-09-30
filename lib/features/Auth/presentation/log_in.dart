import 'package:flutter/material.dart';

class LogInView extends StatelessWidget{
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              
            },
          ),
        ],
        title: Text('Home'),
      ),
    );
  }

  
}