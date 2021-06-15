import 'package:flutter/material.dart';

class Dots extends StatelessWidget {
  const Dots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/icons/Oval.png",
          width: 8,
        ),
        SizedBox(
          width: 3,
        ),
        Image.asset(
          "assets/icons/purple oval.png",
          width: 8,
        ),
        SizedBox(
          width: 3,
        ),
        Image.asset(
          "assets/icons/Oval.png",
          width: 8,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
