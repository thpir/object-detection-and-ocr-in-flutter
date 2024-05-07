import 'package:flutter/material.dart';

class Slide025 extends StatelessWidget {
  const Slide025({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 128),
        child: Stack(
          children: [
            Image.asset("assets/images/app_clamp_detection.png"),
            const SizedBox(
              width: 600,
              child: Text(
                "A button is enabled when a clamp is detected.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 42,
                ),
              ),
            ),
          ],
        ));
  }
}
