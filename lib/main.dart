import 'package:flutter/material.dart';
import 'package:whatsapp_clone/color.dart';
import 'package:whatsapp_clone/responsive/responsive_layout.dart';
import 'package:whatsapp_clone/screens/mobile_Screen_layout.dart';
import 'package:whatsapp_clone/screens/web_Screen_layout.dart';

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
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
        home: const responsiveLayout(
            webscreenlayout: WebScreenLayout(),
            mobilescreenlayout: MobileScreenlayout()));
  }
}
