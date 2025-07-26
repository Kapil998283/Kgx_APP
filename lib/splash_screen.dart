import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'onboarding.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key}); // ✅ FIXED

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/animations/loader.json'),
      backgroundColor: Colors.black,
      splashIconSize: 250,
      duration: 3000,
      nextScreen:
          const OnboardingPage(), // ✅ add const here too (after onboarding created)
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
