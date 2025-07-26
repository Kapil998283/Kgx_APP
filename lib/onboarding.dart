import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home_webview.dart'; // This will be your next screen

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome to KGX Esports",
          body: "Join the ultimate gaming battles and win rewards.",
          image: Image.asset('assets/images/onboard1.png'),
        ),
        PageViewModel(
          title: "Join & Create Teams",
          body: "Find players, build squads, and dominate tournaments.",
          image: Image.asset('assets/images/onboard2.png'),
        ),
        PageViewModel(
          title: "Earn & Redeem",
          body: "Collect coins and tickets, and redeem exclusive rewards.",
          image: Image.asset('assets/images/onboard3.png'),
        ),
      ],
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const WebViewHome()),
        );
      },
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Icon(Icons.arrow_forward),
      done: const Text("Start", style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
