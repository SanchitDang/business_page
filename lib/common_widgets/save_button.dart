import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget savebutton() {
  return SizedBox(
    width: 220,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(20, 61, 89, 1),),
        onPressed: () {
          Get.back();
        },
        child: const Text(
          "Save & Explore",
          style: TextStyle(fontSize: 16, color: Colors.white),
        )),
  );
}
