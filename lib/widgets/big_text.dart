import 'package:flutter/material.dart';

class BigText extends StatelessWidget {

  String text;
  BigText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
