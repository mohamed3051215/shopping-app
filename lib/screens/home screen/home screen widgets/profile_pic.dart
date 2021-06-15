import 'package:flutter/material.dart';

import '../../../colors.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child:
            Image.asset("assets/images/Profile.png", fit: BoxFit.fill),
      ),
    );
  }
}

class NotifyIcon extends StatelessWidget {
  const NotifyIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset(
              "assets/icons/notify.png",
              width: 16,
              height: 13,
            ),
          ),
          Positioned(
            bottom: 28,
            right: 15,
            child: Container(
              width: 15,
              height: 16,
              child: Center(child: Text("2", style: TextStyle(fontSize: 10))),
              decoration: BoxDecoration(
                  color: purple,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2)),
            ),
          )
        ],
      ),
    );
  }
}
