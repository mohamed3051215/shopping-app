import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/colors.dart';
import 'package:shopping_app/screens/cart%20screen/cart_screen.dart';
import 'package:shopping_app/screens/home%20screen/home_screen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  _NavBarScreenState createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = <Widget>[
      HomeScreen(),
      CartScreen(),
      Scaffold(),
      Scaffold(),
    ];
    return Scaffold(
      body: tabs[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int indx) {
          setState(() {
            index = indx;
          });
        },
        items: [
          BottomNavigationBarItem(
              label: "",
              icon: SvgPicture.asset("assets/icons/home.svg",
                  color: index == 0 ? purple : Colors.grey)),
          BottomNavigationBarItem(
              label: "",
              icon: SvgPicture.asset(
                "assets/icons/cart.svg",
                color: index == 1 ? purple : Color(0xffB5BAC0),
              )),
          BottomNavigationBarItem(
              label: "", icon: SvgPicture.asset("assets/icons/Shape.svg")),
          BottomNavigationBarItem(
              label: "", icon: SvgPicture.asset("assets/icons/profile.svg")),
        ],
      ),
    );
  }
}
