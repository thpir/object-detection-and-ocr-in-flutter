import 'package:cv_and_ocr_in_flutter/slides/widgets/unordered_list_item.dart';
import 'package:flutter/material.dart';

class Slide014 extends StatelessWidget {
  const Slide014({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const UnorderedListItem(
            fontSize: 40,
            bodyText: "How to detect a valid connection between trailer and silo?",
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50),
            child: UnorderedListItem(
              fontSize: 40,
              bodyText: "Male / female clamp connection",
              bulletPoint: "➜",
            ),
          ),
          const UnorderedListItem(
            fontSize: 40,
            highlightedText: "Problem: ",
            bodyText: "Many different clamp types and connections. In total more than 400 different types = not possible acquire, label and train all possibilities",
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50),
            child: UnorderedListItem(
              fontSize: 40,
              highlightedText: "Solution: ",
              bodyText: "design generic clamp permanently attached to hose from trailer",
              bulletPoint: "➜",
            ),
          ),
          Image.asset("assets/images/clamp_detection_process.png", height: 380,)
        ],
      ),
    );
  }
}