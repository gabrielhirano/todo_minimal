import 'package:flutter/material.dart';

class MenuIconApp extends StatelessWidget {
  final Function() onTap;
  const MenuIconApp({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 30,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            width: 30,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            width: 30,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
