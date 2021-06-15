import 'package:flutter/material.dart';

import 'screens/splash screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping app',
      theme: ThemeData(
        fontFamily: "Roboto",
        primarySwatch: Colors.purple,
      ),
      home: SplashScreen(),
    );
  }
}
