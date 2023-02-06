import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:ui/constants.dart';
import 'package:ui/dimensions.dart';
import 'package:ui/pages/UIPage.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({
    super.key,
  });

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      UIPage(),
      UIPage(),
      UIPage(),
      UIPage(),
      UIPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      _persistentBottomNavBarItem(
          title: "Home", path: "assets/images/Home.png"),
      _persistentBottomNavBarItem(
          title: "Search", path: "assets/images/Search.png"),
      _persistentBottomNavBarItem(
          title: "Video", path: "assets/images/Video.png"),
      _persistentBottomNavBarItem(
          title: "Save", path: "assets/images/Save.png"),
      _persistentBottomNavBarItem(
          title: "Settings", path: "assets/images/Settings.png"),
    ];
  }

  PersistentBottomNavBarItem _persistentBottomNavBarItem(
      {required String title, required String path}) {
    return PersistentBottomNavBarItem(
      icon: Image.asset(path, height: 30, width: 25, fit: BoxFit.cover),
      title: (title),
      activeColorPrimary: Constants.kBGColor1,
      inactiveColorPrimary: Colors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      hideNavigationBarWhenKeyboardShows: true,
      padding: const NavBarPadding.only(bottom: 15),
      navBarHeight: 80,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
