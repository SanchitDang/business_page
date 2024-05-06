import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> availList = ["item1", "item2", "item3", "item4"];
    String? selectedItem = "";

    return Stack(
      children: [
        Container(
          color: const Color(0xFF0077FF),
          height: MediaQuery.of(context).size.height,
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: MediaQuery.of(context).size.height * 0.5, // 50% length
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.keyboard_backspace, color: Colors.white, size: 28,),
                      Text("Expense",  style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),),
                      SizedBox(width: 40),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("How much?",  style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),),
                      const Text("₹ 0",  style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.35,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 10),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          12.0),
                      border: Border.all(
                        width: 0.4,
                          color: Colors.grey.withOpacity(0.5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(14, 2, 14, 2),
                      child: DropdownButton(
                        icon: Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey.withOpacity(0.8), size:30),
                        iconSize: 30,
                        isExpanded: true,
                        underline: const SizedBox(),
                        hint: const Text("Category",  style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                        ),),
                        value: selectedItem == "" ? null : selectedItem,
                        items: availList.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          // setState(() {
                          selectedItem = newValue;
                          // });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          12.0),
                      border: Border.all(
                          width: 0.4,
                          color: Colors.grey.withOpacity(0.5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(14, 2, 14, 2),
                      child: DropdownButton(
                        icon: Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey.withOpacity(0.8), size:30),
                        iconSize: 30,
                        isExpanded: true,
                        underline: const SizedBox(),
                        hint: const Text("Description",  style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                        value: selectedItem == "" ? null : selectedItem,
                        items: availList.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          // setState(() {
                          selectedItem = newValue;
                          // });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          12.0),
                      border: Border.all(
                          width: 0.4,
                          color: Colors.grey.withOpacity(0.5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 2, 15, 2),
                      child: DropdownButton(
                        icon: Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey.withOpacity(0.8), size:30),
                        iconSize: 30,
                        isExpanded: true,
                        underline: const SizedBox(),
                        hint: const Text("Wallet",  style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                        value: selectedItem == "" ? null : selectedItem,
                        items: availList.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          // setState(() {
                          selectedItem = newValue;
                          // });
                        },
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: const Color(0xFF7F3DFF),
                    ),
                    child: const Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
