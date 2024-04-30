import 'package:cv_and_ocr_in_flutter/slides/widgets/unordered_list_item.dart';
import 'package:flutter/material.dart';

class Slide016 extends StatelessWidget {
  const Slide016({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128),
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exporting the data results in a folder structure with:",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black
                  ),
                ),
                UnorderedListItem(
                  fontSize: 40,
                  highlightedText: "Images",
                ),
                Padding(
                  padding: EdgeInsets.only(left: 120), 
                  child: Text(
                    "1. Train", 
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 120), 
                  child: Text(
                    "2. Val", 
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black
                    ),
                  ),
                ),
                UnorderedListItem(
                  fontSize: 40,
                  highlightedText: "Labels",
                ),
                Padding(
                  padding: EdgeInsets.only(left: 120), 
                  child: Text(
                    "1. Train", 
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 120), 
                  child: Text(
                    "2. Val", 
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "The labels are .txt files that have the same file name as the corresponding image",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset("assets/images/label_file_explanation.png")
          )
        ],
      ),
    );
  }
}