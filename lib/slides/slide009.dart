import 'package:cv_and_ocr_in_flutter/slides/widgets/unordered_list_item.dart';
import 'package:flutter/material.dart';

class Slide009 extends StatelessWidget {
  const Slide009({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 64.0),
      child: Row(
        children: [
          const Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UnorderedListItem(
                  fontSize: 46,
                  highlightedText: "Financial: ",
                  bodyText: "Customers do not want to pay for tag-readers",
                ),
                UnorderedListItem(
                  fontSize: 46,
                  highlightedText: "Human error: ",
                  bodyText: "Sometimes tag on pipe A, but hose on pipe B",
                ),
                UnorderedListItem(
                  fontSize: 46,
                  highlightedText: "Marketing: ",
                  bodyText: "System is outdated",
                ),
                UnorderedListItem(
                  fontSize: 46,
                  highlightedText: "Timing: ",
                  bodyText: "30 Days for solution & Proof-Of-Concept",
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/silos_in_the_wild_2.jpg',
                  fit: BoxFit.fitHeight,
                ),
                Image.asset(
                  'assets/images/silos_in_the_wild_1.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}