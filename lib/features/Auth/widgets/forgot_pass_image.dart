import 'package:flutter/material.dart';

class ForgotPasswordImage extends StatelessWidget {
  const ForgotPasswordImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Image.asset("assets/images/forgotPassword.png", fit: BoxFit.contain,),
    );
  }
}