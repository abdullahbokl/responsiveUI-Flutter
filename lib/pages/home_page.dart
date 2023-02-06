import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/widgets/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Constants.screenHeight = MediaQuery.of(context).size.height;
    Constants.screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
