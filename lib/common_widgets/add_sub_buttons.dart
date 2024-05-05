import 'package:flutter/material.dart';

Widget subButton(IconData icon, String value) {
  return GestureDetector(
    onTap: () {
      // Action for the second button
    },
    child: Row(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Color.fromRGBO(20, 61, 89, 1),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 24,),
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orangeAccent,
          ),
          child: Icon(
            icon,
            color: const Color.fromRGBO(20, 61, 89, 1),
            size: 30,
          ),
        ),
      ],
    ),
  );
}
