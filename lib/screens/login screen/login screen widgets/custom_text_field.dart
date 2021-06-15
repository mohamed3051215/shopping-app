import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool isPassword;

  const CustomTextField(
      {Key? key, required this.labelText, this.isPassword = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 228,
      height: 47,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          decoration: InputDecoration(
              labelText: labelText,
              labelStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5), fontSize: 16)),
          obscureText: isPassword,
        ),
      ),
    );
  }
}
