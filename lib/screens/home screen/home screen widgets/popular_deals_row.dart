import 'package:flutter/material.dart';


class PopularDealsRow extends StatelessWidget {
  const PopularDealsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Popular Deals",
            style: TextStyle(fontSize: 18),
          ),
          Text("See All",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12))
        ],
      ),
    );
  }
}
