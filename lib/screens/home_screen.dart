import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/screens/desktop_home_screen.dart';
import 'package:flutter_layout_demo/screens/mobile_home_screen.dart';
import 'package:flutter_layout_demo/screens/tablet_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1024) {
        return const DesktopHomeScreen();
      }

      if (constraints.maxWidth >= 600) {
        return const TabletHomeScreen();
      }

      return const MobileHomeScreen();
    });
  }
}
