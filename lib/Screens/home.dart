import 'dart:ui';

import 'package:business_page/Screens/refine.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../common_widgets/add_sub_buttons.dart';
import '../consts/controller.dart';
import 'chat.dart';
import 'connections.dart';
import 'contacts.dart';
import 'explore.dart';
import 'groups.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isOpen = false;

  void toggleIcons() {
    setState(() {
      isOpen = !isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    var controller1 = Get.put(Homecontroller());

    var NavBarItem = [
      const BottomNavigationBarItem(
          icon: Icon(
            LineIcons.eye,
            size: 26,
          ),
          label: "Explore"),
      const BottomNavigationBarItem(
          icon: Icon(
            LineIcons.wiredNetwork,
            size: 26,
          ),
          label: "Connections"),
      const BottomNavigationBarItem(
          icon: Icon(
            LineIcons.rocketChat,
            size: 26,
          ),
          label: "Chat"),
      const BottomNavigationBarItem(
          icon: Icon(
            LineIcons.addressBook,
            size: 26,
          ),
          label: "Contacts"),
      const BottomNavigationBarItem(
          icon: Icon(
            LineIcons.users,
            size: 26,
          ),
          label: "Group"),
    ];

    var navBody = [
      const Explore(),
      const ChatScreen(),
      const ConnectionsScreen(),
      const ContactScreen(),
      const GroupsScreen()
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(14, 46, 67, 1),
        centerTitle: false,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            )),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Howdy Dear User !!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 13,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Current Location",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => const Refine());
              },
              icon: const Icon(
                LineIcons.tasks,
                size: 35,
                color: Colors.white,
              )),
        ],
      ),
      body: Obx(() => navBody.elementAt(controller1.currentNavIndex.value)),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          currentIndex: controller1.currentNavIndex.value,
          selectedItemColor: const Color.fromRGBO(20, 61, 89, 1),
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          items: NavBarItem,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: (value) {
            controller1.currentNavIndex.value = value;
          },
        ),
      ),
      floatingActionButton: BackdropFilter(
        filter: isOpen ? ImageFilter.blur(sigmaX: 2, sigmaY: 2) : ImageFilter.blur(sigmaX: 0, sigmaY: 0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                bottom: 1.0,
                right: 1.0,
                child: GestureDetector(
                  onTap: () => toggleIcons(),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(20, 61, 89, 1),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ),
              if (isOpen)
                Positioned(
                  bottom: 75.0,
                  right: 6.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 10),
                      subButton(LineIcons.heart, "Dating"),
                      SizedBox(height: 10),
                      subButton(LineIcons.ring, "Matrimony"),
                      SizedBox(height: 10),
                      subButton(LineIcons.shoppingBag, "Buy-Sell-Rent"),
                      SizedBox(height: 10),
                      subButton(LineIcons.creditCard, "Business Cards"),
                      SizedBox(height: 10),
                      subButton(LineIcons.hashtag, "Net-clan Groups"),
                      SizedBox(height: 10),
                      subButton(LineIcons.suitcase, "Jobs"),
                      SizedBox(height: 10),
                      subButton(LineIcons.stickyNote, "Notes"),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
