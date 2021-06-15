import 'package:flutter/material.dart';

import '../../../colors.dart';

class BestSellerContainer extends StatelessWidget {
  const BestSellerContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Container(
        width: 335,
        height: 151,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(0, 10),
              blurRadius: 50)
        ], color: veryLightBlue, borderRadius: BorderRadius.circular(5)),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                      onPressed: () {},
                      child: Text("Best Seller",
                          style: TextStyle(color: veryLightBlue))),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 170,
                      child: Text("Beats By Solo Dr.Dre Wireless",
                          style: TextStyle(color: Colors.white))),
                  SizedBox(
                    height: 10,
                  ),
                  Text("24.90\$",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Positioned(
                top: -30,
                right: 20,
                child: Image.asset(
                  "assets/images/product 2.png",
                  width: 130,
                ))
          ],
        ),
      ),
    );
  }
}
