import 'package:flutter/material.dart';
import 'package:shopping_app/screens/cart%20screen/cart%20screen%20widgets/product_cart_card.dart';

import '../../colors.dart';
import 'cart screen widgets/app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: Container(
              width: double.infinity,
              height: 476,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(blurRadius: 10, color: Colors.grey.shade200)
              ]),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView(
                  children: [
                    ProductCartCard(
                        color: Colors.yellow,
                        textColor: "Yellow",
                        image: "assets/images/product 2.png",
                        count: "x1",
                        price: "120\$",
                        name: "Desert Sand"),
                    ProductCartCard(
                        color: purple,
                        textColor: "Purple",
                        image: "assets/images/product 1.png",
                        count: "x1",
                        price: "250\$",
                        name: "The NBA Collection"),
                    ProductCartCard(
                        color: veryLightBlue,
                        textColor: "Light Blue",
                        image: "assets/images/product 3.png",
                        count: "x1",
                        price: "100\$",
                        name: "Crystal Blue"),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("shipping:"),
                    Text("5\$", style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("total:"),
                    Text("400\$", style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
