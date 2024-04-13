import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDD0BD),
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width: 200,
        ) 
      ),
    );
  }
}