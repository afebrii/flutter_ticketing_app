import 'package:flutter/material.dart';
import 'package:flutter_ticketing_app/core/assets/assets.gen.dart';
import 'package:flutter_ticketing_app/core/constants/colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Image.asset(
          Assets.images.logo.path,
          width: 280,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
