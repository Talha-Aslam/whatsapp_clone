import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilescreenlayout;
  final Widget webscreenlayout;
  const ResponsiveLayout(
      {super.key,
      required this.webscreenlayout,
      required this.mobilescreenlayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return webscreenlayout;
          // webscreenlayout
        }
        return mobilescreenlayout;
        // mobile Screen
      },
    );
  }
}
