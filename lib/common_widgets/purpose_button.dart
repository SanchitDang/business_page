import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PurposeButton extends StatefulWidget {
  String title;
  PurposeButton({super.key, required this.title});

  @override
  State<PurposeButton> createState() => _PurposeButtonState();
}

class _PurposeButtonState extends State<PurposeButton> {
  Color color1 = const Color.fromRGBO(255, 255, 255, 1);
  late String tile = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tile = widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: color1,
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        onPressed: () {
          setState(() {
            color1 = (color1 == const Color.fromRGBO(20, 61, 89, 1)
                ? Colors.white
                : const Color.fromRGBO(20, 61, 89, 1));
          });
        },
        child: color1 == const Color.fromRGBO(20, 61, 89, 1)
            ? tile.text.size(14).color(Colors.white).make()
            : tile.text.size(14).color(Colors.black).make());
  }
}
