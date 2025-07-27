import 'package:flutter/material.dart';
import 'onboarding_screen1.dart';
import 'onboarding_screen2.dart';
import 'onboarding_screen3.dart';
import 'onboarding_screen4.dart';
import '../home/home.dart'; // Final screen after onboarding

class OnboardingWrapper extends StatefulWidget {
  const OnboardingWrapper({super.key});

  @override
  State<OnboardingWrapper> createState() => _OnboardingWrapperState();
}

class _OnboardingWrapperState extends State<OnboardingWrapper> {
  final PageController _controller = PageController();
  int currentPage = 0;

  final List<Widget> _pages = const [
    OnboardingScreen1(),
    OnboardingScreen2(),
    OnboardingScreen3(),
    OnboardingScreen4(),
  ];

  void _nextPage() {
    if (currentPage < _pages.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    }
  }

  void _skip() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: _pages.length,
            onPageChanged: (int index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (_, index) {
              return _pages[index];
            },
          ),
          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: _skip,
              child: const Text(
                'Skip',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            right: 24,
            child: ElevatedButton(
              onPressed: _nextPage,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                currentPage == _pages.length - 1 ? 'Get Started' : 'Next',
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
