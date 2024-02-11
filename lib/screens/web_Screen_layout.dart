import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/contact_info.dart';
import 'package:whatsapp_clone/Widgets/web_profile_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Webprofilebar(),
                // web searchbar
                Contactinfo(),
              ],
            ),
          ),
        ),
        // webscreen
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/backgroundImage.png"),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    ));
  }
}
