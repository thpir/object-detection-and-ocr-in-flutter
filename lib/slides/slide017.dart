import 'package:flutter/material.dart';

class Slide017 extends StatelessWidget {
  const Slide017({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128),
      child: Column(
        children: [
          const Text(
            "Each .txt file contains the class number, x_center and y_center of rectangle and width and height of the annotated rectangle.",
            style: TextStyle(
              fontSize: 40,
              color: Colors.black
            ),
          ),
          Image.asset(
            "assets/images/bounding_box_explained.jpg",
            scale: .7,
          )
        ],
      ),
    );
  }
}