import 'package:flutter/material.dart';
import 'package:whatsapp_clone/color.dart';
import 'package:whatsapp_clone/Widgets/info.dart';
import 'package:whatsapp_clone/screens/mobile_chat_screen.dart';

class Contactinfo extends StatelessWidget {
  const Contactinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Mobilechat(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: ListTile(
                      title: Text(
                        info[index]['name'].toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          info[index]['message'].toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(info[index]['profilePic'].toString()),
                        radius: 30,
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: dividerColor,
                  indent: 100,
                ),
              ],
            );
          }),
    );
  }
}
