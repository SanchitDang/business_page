import 'package:flutter/material.dart';

import '../../common_widgets/card.dart';
import '../../common_widgets/search_bar.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          searchbar(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: List.generate(6, (index) => const Cardlayout()),
            ),
          ))
        ],
      ),
    );
  }
}
