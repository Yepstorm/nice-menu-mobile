import 'package:flutter/material.dart';

import 'screens/splash_screen/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
        theme: ThemeData(
          // elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: Colors.white)),
          useMaterial3: true,
        ),
        home: SplashScreen());
  }
}