import 'package:flutter/material.dart';
import 'package:whatsapp_clone/color.dart';
import 'package:whatsapp_clone/responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(background: backgroundColor)),
        home: responsiveLayout(
            webscreenlayout: webscreenlayout,
            mobilescreenlayout: mobilescreenlayout));
  }
}
