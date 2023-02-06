import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {

String text;
double fontSize;
Color? color;

  TitleText({Key? key, required this.text, required this.fontSize, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: color ?? Colors.white,
      ),
    );
  }
}
