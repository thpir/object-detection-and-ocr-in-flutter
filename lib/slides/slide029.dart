import 'package:cv_and_ocr_in_flutter/slides/widgets/unordered_list_item.dart';
import 'package:flutter/material.dart';

class Slide029 extends StatelessWidget {
  const Slide029({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128),
      child: Row(
        children: [
          const Expanded(
            flex: 3,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UnorderedListItem(
                    fontSize: 46,
                    highlightedText: "Package:",
                    bodyText: " google_mlkit_text_recognition",
                  ),
                  UnorderedListItem(
                    fontSize: 46,
                    bodyText: "Out-of-the-box OCR, ready to use",
                  ),
                  UnorderedListItem(
                    fontSize: 46,
                    bodyText: "Flutter plugin to use Google's ML Kit Text Recognition",
                  )
                ],
              )
            )
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Image.asset("assets/images/qr_ocr.png")
            )
          ),
        ],
      ),
    );
  }
}