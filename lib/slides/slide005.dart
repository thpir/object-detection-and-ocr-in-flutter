import 'package:flutter/material.dart';

class Slide005 extends StatelessWidget {
  const Slide005({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(left: 100, bottom: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Bullet(text: "Modern framework"),
                Bullet(text: "Fast development"),
                Bullet(text: "More than just Android and iOS..."),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Image.asset(
              "assets/images/gaicia_screenshot.png",
              fit: BoxFit.contain,
              height: 700,)
          ),
        )
      ],
    );
  }
}

class Bullet extends StatelessWidget {
  final String text;
  const Bullet({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "• ",
            style: TextStyle(
              fontSize: 46,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 46,
              ),
            ),
          ),
        ],
      ),
    );
  }
}