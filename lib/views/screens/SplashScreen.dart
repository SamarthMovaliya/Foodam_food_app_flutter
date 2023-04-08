import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  getOut() {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      Navigator.pushReplacementNamed(context, 'IntroScreen');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getOut();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xffFFDE5A),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 3, end: 1),
                duration: const Duration(seconds: 1),
                curve: Curves.elasticOut,
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: value,
                    child: TweenAnimationBuilder(
                      tween: Tween<double>(begin: 2, end: 0),
                      duration: const Duration(seconds: 5),
                      curve: Curves.elasticOut,
                      builder: (context, value, child) {
                        return Transform.rotate(
                          angle: value,
                          child: Hero(
                            tag: 'logo',
                            child: Image.asset('assets/logo/AppLogo.png'),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              'FOODAM',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 10,
                  fontWeight: FontWeight.w900,
                  fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
