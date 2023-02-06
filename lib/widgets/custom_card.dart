import 'package:flutter/material.dart';
import 'package:ui/dimensions.dart';
import 'package:ui/models/task_model.dart';
import 'package:ui/widgets/small_text.dart';
import 'package:ui/widgets/title_text.dart';

class CustomCard extends StatelessWidget {
  TaskModel task;
  double? width;
  double? height;

  CustomCard({Key? key, required this.task, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? Dimensions.height200,
      width: width ?? Dimensions.width160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimensions.radius10),

      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: Dimensions.height10,
          bottom: Dimensions.height10,
          left: Dimensions.width10,
          right: Dimensions.width10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: Dimensions.height3),
              height: 40,
              width: 40,
              // add image here
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius5),
                image: DecorationImage(
                  image: task.image.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            TitleText(
              text: task.title,
              fontSize: Dimensions.font14,
              color: Colors.black,
            ),
            SmallText(
              text: "Save Date: ${task.date}",
              color: Colors.grey,
              size: 12,
            ),
          ],
        ),
      ),
    );
  }
}
