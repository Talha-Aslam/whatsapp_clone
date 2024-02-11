import 'package:flutter/material.dart';
import 'package:whatsapp_clone/color.dart';

class Websearchbar extends StatelessWidget {
  const Websearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: dividerColor),
      )),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: searchBarColor,
            prefixIcon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            hintText: "Search or Message",
            hintStyle: const TextStyle(fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            contentPadding: EdgeInsets.all(8)),
      ),
    );
  }
}
