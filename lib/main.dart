import 'package:flutter/material.dart';
import 'package:food_ordering_app_getx/views/ViewPage.dart';
import 'package:food_ordering_app_getx/views/screens/DetailPage.dart';
import 'package:food_ordering_app_getx/views/screens/HomePage.dart';
import 'package:food_ordering_app_getx/views/screens/IntroScreen.dart';
import 'package:food_ordering_app_getx/views/screens/SplashScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: 'SplashScreen',
      routes: {
        'HomePage': (context) => const HomePage(),
        'SplashScreen': (context) => const SplashScreen(),
        'IntroScreen': (context) => const IntroScreen(),
        'ViewPage': (context) => const ViewPage(),
        'DetailPage': (context) => const DetailPage(),
      },
    ),
  );
}
