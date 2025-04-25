import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mudeer/core/theming/colors.dart';
import 'content_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        exit(0);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Scaffold(
          backgroundColor: ColorsManager.backGround,
          body: ContentHomeScreen(),
        ),
      ),
    );
  }
}
