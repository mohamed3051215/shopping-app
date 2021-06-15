import 'package:flutter/material.dart';

import '../../../colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BackButton(),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        "assets/icons/notify.png",
                        width: 16,
                        color: purple,
                        height: 13,
                      ),
                    ),
                    Positioned(
                      bottom: 28,
                      right: 15,
                      child: Container(
                        width: 15,
                        height: 16,
                        child: Center(
                            child: Text("2",
                                style: TextStyle(fontSize: 12))),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.white, width: 2)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset("assets/images/Profile.png",
                      width: 40, fit: BoxFit.fill),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
