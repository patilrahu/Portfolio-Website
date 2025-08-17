import 'package:flutter/material.dart';
import 'package:portfolio_website/core/constant/app_image.dart';
import 'package:portfolio_website/feature/home/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  bool _animate = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _animate = true;
      });
    });
    _navigateToScreen();
  }

  void _navigateToScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) {
          return Home();
        },
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedSlide(
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeOut,
            offset: _animate ? Offset.zero : const Offset(0, 0.5),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 800),
              opacity: _animate ? 1 : 0,

              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  AppImage.aboutUsLogo,
                  height: 200,
                  width: 200,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          AnimatedSlide(
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeOut,
            offset: _animate ? Offset.zero : const Offset(0, 0.5),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 800),
              opacity: _animate ? 1 : 0,
              child: Column(
                children: [
                  Text(
                    "Welcome to My Portfolio",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
