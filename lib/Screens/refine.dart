import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../common_widgets/purpose_button.dart';
import '../common_widgets/save_button.dart';
import '../consts/strings.dart';

class Refine extends StatefulWidget {
  const Refine({super.key});

  @override
  State<Refine> createState() => _RefineState();
}

class _RefineState extends State<Refine> {
  List<String> availList = [item1, item2, item3, item4];
  String? _selectedItem = "";
  TextEditingController _controller = TextEditingController();
  double _sliderValue = 50;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.text = connections;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(20, 61, 89, 1),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
              size: 20,
            )),
        title: const Text(
          "Refine",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              avail.text
                  .color(
                    const Color.fromRGBO(20, 61, 89, 1),
                  )
                  .size(20)
                  .fontWeight(FontWeight.w500)
                  .make(),
              5.heightBox,
              DropdownButton(
                      isExpanded: true,
                      underline: const SizedBox(),
                      hint: const Text("Select an availability"),
                      value: _selectedItem == "" ? null : _selectedItem,
                      items: availList.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              color: Color.fromRGBO(20, 61, 89, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedItem = newValue;
                        });
                      })
                  .box
                  .width(context.screenWidth * 0.9)
                  .rounded
                  .border(color: Colors.blueGrey, width: 2)
                  .px8
                  .make(),
              10.heightBox,
              5.heightBox,
              status.text
                  .color(
                    const Color.fromRGBO(20, 61, 89, 1),
                  )
                  .size(20)
                  .fontWeight(FontWeight.w500)
                  .make(),
              10.heightBox,
              TextField(
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      controller: _controller,
                      decoration: const InputDecoration(
                          hintText: "Write Status", border: InputBorder.none))
                  .box
                  .rounded
                  .border(color: Colors.grey)
                  .height(context.screenHeight * 0.2)
                  .px16
                  .make(),
              2.heightBox,
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("47/250")],
              ),
              10.heightBox,
              distance.text
                  .color(
                    const Color.fromRGBO(20, 61, 89, 1),
                  )
                  .size(20)
                  .fontWeight(FontWeight.w500)
                  .make(),
              Slider(
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label: '$_sliderValue',
                  value: _sliderValue,
                  activeColor: const Color.fromRGBO(20, 61, 89, 1),
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value.roundToDouble();
                    });
                  }),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("1 Km"), Text("100 Km")],
                ),
              ),
              30.heightBox,
              purpose.text
                  .color(
                    const Color.fromRGBO(20, 61, 89, 1),
                  )
                  .size(20)
                  .fontWeight(FontWeight.w500)
                  .make(),
              10.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 15, // Horizontal spacing between buttons
                    runSpacing: 10, // Vertical spacing between rows
                    children: [
                      PurposeButton(title: "Coffee"),
                      PurposeButton(title: "Business"),
                      PurposeButton(title: "Hobbies"),
                      PurposeButton(title: "Friendship"),
                      PurposeButton(title: "Movies"),
                      PurposeButton(title: "Dining"),
                      PurposeButton(title: "Dating"),
                      PurposeButton(title: "Matrimony"),
                    ],
                  ),
                ],
              ),
              20.heightBox,
              Align(
                child: savebutton(),
              )
            ],
          ),
        ),
      )),
    );
  }
}
