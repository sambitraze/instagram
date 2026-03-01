import 'package:flutter/material.dart';
import 'package:instagram/screens/landing_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LandingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/logo.png', width: 88, height: 88),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'from',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF657F88),
                  fontWeight: FontWeight.w400,
                ),
              ),
              Image.asset('assets/images/meta.png', height: 32),
              const SizedBox(height: 80),
            ],
          ),
        ],
      ),
    );
  }
}
