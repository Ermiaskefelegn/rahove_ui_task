import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:rahove_ui_task/pages/home.dart';
import 'package:rahove_ui_task/pages/profile.dart';
import 'package:rahove_ui_task/pages/second_page.dart';
import 'package:rahove_ui_task/pages/third_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.index});
  final int index;
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  final _buildScreens = [
    const HomePage(),
    const Secondpage(),
    const ThirdPage(),
    const Profilepage(),
  ];
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          activeColorPrimary: const Color(0xff9747FF),
          inactiveColorPrimary: Colors.grey),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.bar_chart),
        activeColorPrimary: const Color(0xff9747FF),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.list_alt),
        activeColorPrimary: const Color(0xff9747FF),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        activeColorPrimary: const Color(0xff9747FF),
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  Widget build(BuildContext context) {
    PersistentTabController _controller =
        PersistentTabController(initialIndex: widget.index);
    return Scaffold(
        body: PersistentTabView(context,
            controller: _controller,
            screens: _buildScreens,
            items: _navBarsItems(),
            confineInSafeArea: true,
            backgroundColor: Colors.white,
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: true,
            stateManagement: true,
            hideNavigationBarWhenKeyboardShows: true,
            decoration: const NavBarDecoration(
              // borderRadius: BorderRadius.circular(10.0),
              colorBehindNavBar: Colors.white,
            ),
            popAllScreensOnTapOfSelectedTab: true,
            popActionScreens: PopActionScreensType.all,
            itemAnimationProperties: const ItemAnimationProperties(
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: const ScreenTransitionAnimation(
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            navBarStyle: NavBarStyle.style5));
  }
}
