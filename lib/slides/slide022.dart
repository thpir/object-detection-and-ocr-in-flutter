import 'package:cv_and_ocr_in_flutter/slides/widgets/ordered_list.dart';
import 'package:flutter/material.dart';

class Slide022 extends StatelessWidget {
  const Slide022({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128),
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: OrderedList(
              numberOfItems: 5, 
              activeItem: 3,
              activeItems: ['Initialize a cameraView', 'Load the model', 'Start an image stream'],
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset("assets/images/start_stream.png"),
          ),
        ],
      ),
    );
  }
}