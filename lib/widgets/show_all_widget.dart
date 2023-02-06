import 'package:flutter/material.dart';
import 'package:ui/dimensions.dart';
import 'package:ui/widgets/small_text.dart';
import 'package:ui/widgets/title_text.dart';

class ShowAllWidget extends StatelessWidget {
  String title;
  Color? titleColor;
  Color? descColor;
  ShowAllWidget({super.key, required this.title, this.descColor, this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleText(text: title, fontSize: Dimensions.font20, color: titleColor,),
        // see all button
        SmallText(text: 'See All', color: descColor,),
      ],
    );
  }
}
