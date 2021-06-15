import 'package:flutter/material.dart';

import 'product_card.dart';

class Products extends StatelessWidget {
  const Products({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ProductCard(
                title: "The NBA Collection",
                tag: "p1",
                backgroundImage: "assets/images/product background 1.png",
                foregroundImage: "assets/images/product 1.png",
                price: 250,
              ),ProductCard(
                title: "Desert Sand",
                tag: "p2",
                backgroundImage: "assets/images/product background 2.png",
                foregroundImage: "assets/images/product 2.png",
                price: 120,
              ),ProductCard(
                title: "Crystal Blue",
                tag: "p3",
                backgroundImage: "assets/images/product background 3.png",
                foregroundImage: "assets/images/product 3.png",
                price: 100,
              ),

            ],
          ),
        ));
  }
}
