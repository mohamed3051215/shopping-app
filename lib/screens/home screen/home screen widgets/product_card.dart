import 'package:flutter/material.dart';
import 'package:shopping_app/screens/product%20screen/product_screen.dart';

import '../../../colors.dart';

class ProductCard extends StatelessWidget {
  final String title, backgroundImage, foregroundImage, tag;
  final double price;

  const ProductCard(
      {Key? key,
      required this.title,
      required this.backgroundImage,
      required this.foregroundImage,
      required this.price,
      required this.tag})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ProductScreen(image: foregroundImage, tag: tag)));
        },
        child: Container(
            width: 113,
            height: 186.29,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 113,
                        height: 140,
                        child: Image.asset(backgroundImage, fit: BoxFit.fill),
                      ),
                      Hero(
                        tag: tag,
                        child: Center(
                          child: Container(
                            width: 70,
                            height: 100,
                            child: Image.asset(
                              foregroundImage,
                              fit: BoxFit.fill,
                              width: 100,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(title, style: TextStyle(fontSize: 12)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "$price\$",
                    style:
                        TextStyle(color: purple, fontWeight: FontWeight.w300),
                  ),
                ])),
      ),
    );
  }
}
