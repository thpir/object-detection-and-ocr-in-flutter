import 'package:cv_and_ocr_in_flutter/slides/widgets/ordered_list.dart';
import 'package:flutter/material.dart';

class Slide031 extends StatelessWidget {
  const Slide031({super.key});

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
              activeItem: 1,
              activeItems: ['Pauze the object detection'],
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