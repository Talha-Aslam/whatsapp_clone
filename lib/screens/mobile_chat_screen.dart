import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/chat_list.dart';
import 'package:whatsapp_clone/Widgets/info.dart';
import 'package:whatsapp_clone/color.dart';

class Mobilechat extends StatelessWidget {
  const Mobilechat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.video_call_rounded,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: Chatlist(),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Message",
              fillColor: mobileChatBoxColor,
              filled: true,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.emoji_emotions_sharp,
                    color: Colors.grey,
                  ),
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attach_file_rounded,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}
