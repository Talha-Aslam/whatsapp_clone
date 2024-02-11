import 'package:flutter/material.dart';
import 'package:whatsapp_clone/color.dart';

class Webprofilebar extends StatelessWidget {
  const Webprofilebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.088,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(color: dividerColor),
        ),
        color: webAppBarColor,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/OIP.FQlhxi6IISGVB8SUTwPByAHaEc?rs=1&pid=ImgDetMain'),
            radius: 40,
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.group_add_outlined,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.comment,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}
