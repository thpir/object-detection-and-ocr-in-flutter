import 'package:cv_and_ocr_in_flutter/slides/widgets/ordered_detail_list.dart';
import 'package:flutter/material.dart';

class Slide028 extends StatelessWidget {
  const Slide028({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 128),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: OrderedDetailList(
              numberOfItems: 5, 
              activeItem: 5,
              titles: [
                "Preprocessing", 
                "Document analysis", 
                "Segmentation", 
                "Character recognition", 
                "Output"],
              details: [
                "Gray scaling, resizing, straightening a skewed image,…", 
                "Analyzing image to identify different regions containing text", 
                "Separating individual lines and characters from the image", 
                "Recognize each individual character in the image and convert it into a corresponding digital code", 
                "Return the List of strings (per textbox)"],
            ),
          ),
        ],
      ),
    );
  }
}