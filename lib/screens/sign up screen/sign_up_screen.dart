import 'package:flutter/material.dart';
import 'package:shopping_app/screens/login%20screen/login%20screen%20widgets/custom_text_field.dart';
import 'package:shopping_app/screens/login%20screen/login_screen.dart';
import 'package:shopping_app/screens/navbar%20screen/nav_bar_screen.dart';

import '../../colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: [
      Container(
          width: size.width,
          height: size.height,
          child: Image.asset("assets/images/second screen 2.png",
              fit: BoxFit.cover)),
      Container(
          width: size.width,
          height: size.height,
          child: Image.asset("assets/images/second screen.png",
              fit: BoxFit.cover)),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(),
          Text("Enter Premium Sound",
              style: TextStyle(color: Colors.white, fontSize: 30)),
          SizedBox(
            height: 135,
          ),
          CustomTextField(
            labelText: "Name",
            isPassword: false,
          ),
          SizedBox(
            height: 13,
          ),
          CustomTextField(
            labelText: "Pass",
            isPassword: true,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 228,
            height: 40,
            child: ElevatedButton(
              child: Text("Sign Up", style: TextStyle(color: Colors.white)),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(purple)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => NavBarScreen()));
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 36,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Your Password?",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                )),
          ),
          Container(
            height: 36,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginScreen()));
              },
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      )
    ]));
  }
}
