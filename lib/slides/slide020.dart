import 'package:cv_and_ocr_in_flutter/slides/widgets/unordered_list_item.dart';
import 'package:flutter/material.dart';

class Slide020 extends StatelessWidget {
  const Slide020({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128),
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                UnorderedListItem(
                    fontSize: 46,
                    highlightedText: "Package: ",
                    bodyText: "flutter_vision"),
                UnorderedListItem(
                    fontSize: 46,
                    bodyText:
                        "Flutter plugin for Android for managing YOLOv5 and YOLOv8"),
                UnorderedListItem(
                    fontSize: 46,
                    bodyText: "Don't forget to add a labels.txt file!"),
                UnorderedListItem(
                    fontSize: 46,
                    bodyText: "Add “assets/models/” to pubspec.yaml"),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Center(
                child: Image.asset("assets/images/qr_flutter_vision.png")
              )
            )
        ],
      ),
    );
  }
}
