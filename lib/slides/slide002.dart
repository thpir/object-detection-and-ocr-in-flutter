import 'package:flutter/material.dart';

class Slide002 extends StatelessWidget {
  const Slide002({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Table of contents",
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 70,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 50),
          Text(
            "1.   Cyber3Lab - who are we?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
            ),
          ),
          Text(
            "2.   The project - Lambrecht Trailers",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
            ),
          ),
          Text(
            "3.   Object detection in Flutter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
            ),
          ),
          Text(
            "4.   OCR in Flutter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
            ),
          ),
          Text(
            "5.   Conclusion",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
            ),
          ),
          Text(
            "6.   Question time!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
