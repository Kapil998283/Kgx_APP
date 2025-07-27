import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../screens/onboarding/onboarding_wrapper.dart'; // ✅ Onboarding entry point

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black,
      splashIconSize: 280,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      nextScreen: const OnboardingWrapper(),
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/animations/loader.json', width: 200),
          const SizedBox(height: 16),
          const Text(
            'KGX Esports',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
