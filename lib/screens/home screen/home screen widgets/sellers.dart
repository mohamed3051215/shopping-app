import 'package:flutter/material.dart';

import 'best_seller_card.dart';

class Sellers extends StatelessWidget {
  const Sellers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Container(
          width: MediaQuery.of(context).size.width - 20,
          height: 71,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              BestSellerCard(
                title: "Liva’s Shop",
                image: "assets/images/user 1.png",
              ),
              SizedBox(
                width: 5,
              ),
              BestSellerCard(
                title: "Eric Books",
                image: "assets/images/user 2.png",
              ),
              SizedBox(
                width: 5,
              ),
              BestSellerCard(
                title: "Shop Center",
                image: "assets/images/user 3.png",
              ),
              SizedBox(
                width: 5,
              ),
              BestSellerCard(
                title: "Sweet Home",
                image: "assets/images/user 4.png",
              ),
            ],
          )),
    );
  }
}
