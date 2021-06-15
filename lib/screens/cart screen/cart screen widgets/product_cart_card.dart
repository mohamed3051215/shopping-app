import 'package:flutter/material.dart';

class ProductCartCard extends StatelessWidget {
  final String textColor, image, count, price, name;
  final Color color;
  const ProductCartCard(
      {Key? key,
      required this.color,
      required this.textColor,
      required this.image,
      required this.count,
      required this.price,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 80,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(name),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    decoration:
                        BoxDecoration(color: color, shape: BoxShape.circle),
                    width: 10,
                    height: 10,
                  ),
                  Text(textColor),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(count),
                  SizedBox(
                    width: 100,
                  ),
                  Text(price)
                ],
              )
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          )
        ],
      ),
    );
  }
}
