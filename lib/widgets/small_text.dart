import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/dimensions.dart';

class SmallText extends StatelessWidget {
  String text;
  Color? color;
  double? size;
  int? maxLines;
  SmallText({Key? key, required this.text, this.color, this.size, this.maxLines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines ?? 1,
      style: TextStyle(
        fontSize: size ?? Dimensions.font16,
        color: color ?? Constants.smallTextColor,
      ),
    );
  }
}
