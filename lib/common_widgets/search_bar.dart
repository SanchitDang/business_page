import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:velocity_x/velocity_x.dart';

Widget searchbar() {
  return Padding(
      padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Search..",
                prefixIcon: Icon(Icons.search)),
          ).box.rounded.border(color: Colors.grey).make()),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                LineIcons.horizontalSliders,
                size: 30,
                color: Color.fromRGBO(20, 61, 89, 1),
              ))
        ],
      ));
}
