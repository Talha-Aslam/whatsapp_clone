import 'package:whatsapp_clone/Widgets/info.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/mymessage.dart';
import 'package:whatsapp_clone/Widgets/sendermessage.dart';

class Chatlist extends StatelessWidget {
  const Chatlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return Mymessages(
              message: messages[index]["text"].toString(),
              date: messages[index]["time"].toString());
        }
        return Sendermessages(
            message: messages[index]["text"].toString(),
            date: messages[index]["time"].toString());
      },
    );
  }
}
