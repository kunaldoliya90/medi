import 'package:flutter/material.dart';

class Titlebar extends StatelessWidget {
  final String title;
  const Titlebar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_right_alt,
                size: 33,
              ))
        ],
      ),
    );
  }
}
