
import 'package:flutter/material.dart';
import 'package:shopping_app/screens/splash%20screen/splash%20screen%20widgets/custom_image.dart';
import 'package:shopping_app/screens/splash%20screen/splash%20screen%20widgets/custom_text.dart';




class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        CustomImage(),
        CustomText(),
      ],
    ));
  }
}

