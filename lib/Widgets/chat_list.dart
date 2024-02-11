import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/info.dart';

class Chatlist extends StatelessWidget {
  const Chatlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isme'] == true) {
          //print my messages
        }
        //print person messages
      },
    );
  }
}
