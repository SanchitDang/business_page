import 'package:flutter/material.dart';

import '../../common_widgets/card.dart';
import '../../common_widgets/search_bar.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal>
    with SingleTickerProviderStateMixin {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            searchbar(),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => const Cardlayout(),
            ),
          ],
        ),
      ),
     
    );
  }
}
