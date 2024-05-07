import 'package:cv_and_ocr_in_flutter/slides/widgets/ordered_list.dart';
import 'package:flutter/material.dart';

class Slide033 extends StatelessWidget {
  const Slide033({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128),
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: OrderedList(
              numberOfItems: 4, 
              activeItem: 4,
              activeItems: ['Pauze the object detection', 'Take a picture', 'Process the image with OCR', 'Do something with the result'],
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset("assets/images/ocr_in_flutter.png"),
          ),
        ],
      ),
    );
  }
}