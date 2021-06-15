import 'package:flutter/material.dart';
import 'package:shopping_app/screens/login%20screen/login_screen.dart';
import 'package:shopping_app/screens/sign%20up%20screen/sign_up_screen.dart';

import '../../../colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 50,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 40, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Listen all day",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  width: 324,
                  child: Text(
                      "Enjoy your playlist without interruption, because a full charge lasts up to 22 hours - or up to 40 hours with Pure ANC off.",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w200)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 20, 0),
                  child: Row(children: [
                    Container(
                      width: 139,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LoginScreen()));
                          },
                          child: Text(
                            "Login",
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(purple))),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 139,
                      height: 40,
                      child: TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                                side: BorderSide(color: purple)),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SignUpScreen()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: purple),
                        ),
                      ),
                    )
                  ]))
            ],
          ),
        ));
  }
}
