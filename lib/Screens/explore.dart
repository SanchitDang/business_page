import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../consts/controller.dart';
import 'Explore Screens/businesses.dart';
import 'Explore Screens/personal.dart';
import 'Explore Screens/services.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with SingleTickerProviderStateMixin {
  var controller1 = Get.put(Homecontroller());
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  var tabBody = const [Personal(), Services(), Businesses()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              color: const Color.fromRGBO(20, 61, 89, 1),
              child: TabBar(
                  controller: _controller,
                  indicatorColor: Colors
                      .white, // Set the color of the selected tab indicator
                  labelColor:
                      Colors.white, // Set the color of the selected tab text
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(
                      child: Text(
                        "Personal",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Services",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Businesses",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    )
                  ]),
            )),
      ),
      body: TabBarView(controller: _controller, children: tabBody),
    );
  }
}
