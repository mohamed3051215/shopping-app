import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String image, tag;

  const ImageContainer({key, required this.image, required this.tag})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 411,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
          color: Color(0xff7C6BD7),
          image: DecorationImage(
              image: AssetImage("assets/images/product details background.png"),
              colorFilter: ColorFilter.mode(
                  Color(0xff7C6BD7).withOpacity(.2), BlendMode.dstATop),
              fit: BoxFit.fill),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SafeArea(
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
                                color: Colors.white,
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
            ),
            Positioned(
              top: 80,
              left: 20,
              child: Container(
                width: 200,
                child: Text("Beats By Solo Dr. Dre",
                    style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
            ),
            Positioned(
              bottom: -60,
              right: 40,
              child: Hero(
                tag: tag,
                child: Image.asset(
                  image,
                  width: 260,
                ),
              ),
            ),
          ],
        ));
  }
}
