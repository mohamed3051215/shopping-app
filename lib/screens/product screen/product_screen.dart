import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/colors.dart';
import 'package:shopping_app/screens/product%20screen/product%20screen%20widgets/image_container.dart';

class ProductScreen extends StatelessWidget {
  final String image, tag;

  const ProductScreen({Key? key, required this.image, required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            child: ListView(
              children: [
                ImageContainer(image: image, tag: tag),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 40, 10, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 212,
                                child: Text(
                                    "Experience your music like never before.",
                                    style: TextStyle(fontSize: 21)),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(children: [
                                SvgPicture.asset("assets/icons/battery.svg"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Up to 40-hour battery")
                              ]),
                              SizedBox(height: 20),
                              Row(children: [
                                SvgPicture.asset("assets/icons/wifi.svg"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Wi-Fi")
                              ])
                            ],
                          ),
                          Image.asset(
                            "assets/images/stupid image.png",
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                      "With Fast Fuel, it only takes a few minutes of charging to get up to 3 hours of play, so you can be on your way quicker."),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 82,
          child: Expanded(
              child: Row(
            children: [
              Flexible(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(color: purple),
                  child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Center(
                          child: Text("Buy Now 120\$",
                              style: TextStyle(color: Colors.white)))),
                ),
              ),
              Flexible(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Center(child: Text("Add to Card")),
                    ),
                  )),
            ],
          )),
        )
      ],
    ));
  }
}
