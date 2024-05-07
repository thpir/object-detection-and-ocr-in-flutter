import 'package:flutter/material.dart';

class Slide027 extends StatelessWidget {
  const Slide027({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "OCR (Optical Character Recognition) converts virtually any kind of image containing written test (typed, handwritten, or printed) into machine readable text data. = subset of AI",
            style: TextStyle(
              color: Colors.black,
              fontSize: 42,
            ),
          ),
          Image.asset(
            "assets/images/ocr_orc.png",
            height: 550,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
