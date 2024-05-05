import 'package:flutter/material.dart';

class Cardlayout extends StatelessWidget {
  const Cardlayout() : super();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Card(
            margin: const EdgeInsets.all(26.0),
            elevation: 0.0, // Removed elevation
            color: Colors.white, // Darkened white background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
              side: const BorderSide(
                  color: Color.fromRGBO(194, 197, 204, 0.92),
                  width: 1), // Light blue border
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 55),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'John Doe',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "+ INVITE",
                                style: TextStyle(
                                  color: Color.fromRGBO(20, 61, 89, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text('New Delhi | Engineer',
                          style: TextStyle(
                            color: Colors.blueGrey[700],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          'Within 600-800m',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 60,
                              height: 7,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    width:
                                        35, // Adjust width based on the progress percentage
                                    height: 7,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text('Profile Score - 46 %'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.coffee,
                            color: Colors.green,
                            size: 15,
                          ),
                          Text(
                            '  Coffee  |  ',
                            style: TextStyle(color: Colors.green, fontSize: 13),
                          ),
                          Icon(
                            Icons.work_outline,
                            color: Colors.red,
                            size: 15,
                          ),
                          Text(
                            '  Business  |  ',
                            style: TextStyle(color: Colors.red, fontSize: 13),
                          ),
                          Icon(
                            Icons.people_outline,
                            color: Colors.orange,
                            size: 15,
                          ),
                          Text(
                            '  Friendship',
                            style:
                                TextStyle(color: Colors.orange, fontSize: 13),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text('Hi community! I am open to new\nconnections "😊".'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 16,
          top: 16,
          child: Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.blue,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Center(
                child: Image.asset(
                  'assets/pic.png',
                  fit: BoxFit
                      .cover, // Using cover to fill the container and maintain aspect ratio
                  width:
                      80.0, // Adjust width and height to match container size
                  height: 80.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
