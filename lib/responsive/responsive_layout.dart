import 'package:flutter/material.dart';

class responsiveLayout extends StatelessWidget {
  final Widget mobilescreenlayout;
  final Widget webscreenlayout;
  const responsiveLayout(
      {super.key,
      required this.webscreenlayout,
      required this.mobilescreenlayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth > 900) {
          return webscreenlayout;
          // webscreenlayout
        }
        return mobilescreenlayout;
        // mobile Screen
      },
    );
  }
}
