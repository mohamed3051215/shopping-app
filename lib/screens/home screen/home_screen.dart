import 'package:flutter/material.dart';
import 'package:shopping_app/colors.dart';
import 'package:shopping_app/screens/home%20screen/home%20screen%20widgets/best_seller.dart';
import 'package:shopping_app/screens/home%20screen/home%20screen%20widgets/popular_deals_row.dart';
import 'package:shopping_app/screens/home%20screen/home%20screen%20widgets/products.dart';

import 'home screen widgets/best_seller_container.dart';

import 'home screen widgets/dots.dart';
import 'home screen widgets/profile_pic.dart';
import 'home screen widgets/sellers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: scaffoldColor,
          elevation: 0,
          actions: [NotifyIcon(), ProfilePic()],
          title: Text("Welcome",
              style: TextStyle(color: Colors.black, fontSize: 21))),
      body: ListView(
        children: [
          BestSellerContainer(),
          PopularDealsRow(),
          Products(),
          Dots(),
          Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  BestSellers(),
                  Sellers(),
                ],
              ))
        ],
      ),
    );
  }
}
