import 'package:flutter/material.dart';

class BestSellerCard extends StatelessWidget {
  final String image, title;

  const BestSellerCard({Key? key, required this.image, required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        height: 71,
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              image,
              width: 44,
            ),
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ]));
  }
}
