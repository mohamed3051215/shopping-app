import 'package:flutter/material.dart';

class BestSellers extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Best Sellers",
            style: TextStyle(fontSize: 18),
          ),
          Text("See All",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12))
        ],
      ),
    );
  }
}
