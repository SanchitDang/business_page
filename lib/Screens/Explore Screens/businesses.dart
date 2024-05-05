import 'package:flutter/material.dart';

import '../../common_widgets/card.dart';
import '../../common_widgets/search_bar.dart';

class Businesses extends StatelessWidget {
  const Businesses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          searchbar(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: List.generate(10, (index) => const Cardlayout()),
            ),
          ))
        ],
      ),
      
    );
  }
}
