import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/dimensions.dart';
import 'package:ui/widgets/small_text.dart';
import 'package:ui/widgets/title_text.dart';

class MiddleSquare extends StatelessWidget {
  const MiddleSquare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          /// background
          _background(),

          /// content
          Padding(
            padding: EdgeInsets.only(
              top: Dimensions.height20,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // welcome message
                TitleText(
                    text: 'Welcome to TickTick Task',
                    fontSize: Dimensions.font20),
                SizedBox(height: Dimensions.height7),
                SmallText(
                  text:
                      'Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.',
                  maxLines: 2,
                ),
                SizedBox(height: Dimensions.height15),
                // watch video button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _watchVideoButton(),
                  ],

                  /// todos image
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// background
  Container _background() {
    return Container(
      height: Dimensions.bgHeight / 2.35,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 0.1),
        borderRadius: BorderRadius.circular(Dimensions.radius20),
      ),
    );
  }

  /// watch video button
  Container _watchVideoButton() {
    return Container(
      padding: EdgeInsets.only(
        right: Dimensions.width20,
        left: Dimensions.width20,
      ),
      height: Dimensions.height45,
      decoration: BoxDecoration(
        color: Constants.kSecondaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.2),
            spreadRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(Dimensions.radius70),
        border: Border.all(
          color: Constants.kBorderColor,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: Dimensions.height15,
            width: Dimensions.width15,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Polygon.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: Dimensions.width15),
          TitleText(
            text: 'Watch Video',
            fontSize: Dimensions.font20,
          ),
        ],
      ),
    );
  }
}
