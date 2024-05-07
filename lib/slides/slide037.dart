import 'package:cv_and_ocr_in_flutter/howest_style.dart';
import 'package:cv_and_ocr_in_flutter/slides/widgets/unordered_list_link.dart';
import 'package:flutter/material.dart';

class Slide037 extends StatelessWidget {
  const Slide037({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 126),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Object detection packages for yolov8:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold)),
            UnorderedListLink(
              color: HowestStyle.primaryColor,
              fontSize: 26, 
              link: "https://pub.dev/packages/flutter_vision",
              bodyText: "flutter_vision",
            ),
            UnorderedListLink(
              color: HowestStyle.primaryColor,
              fontSize: 26, 
              link: "https://pub.dev/packages/pytorch_lite",
              bodyText: "pytorch_lite",
            ),
            UnorderedListLink(
              color: HowestStyle.primaryColor,
              fontSize: 26, 
              link: "https://pub.dev/packages/ultralytics_yolo",
              bodyText: "ultralytics_yolo",
            ),
            Text("Other vision packages:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold)),
            UnorderedListLink(
              color: HowestStyle.primaryColor,
              fontSize: 26, 
              link: "https://pub.dev/packages/google_mlkit_object_detection",
              bodyText: "google_mlkit_object_detection",
            ),
            UnorderedListLink(
              color: HowestStyle.primaryColor,
              fontSize: 26, 
              link: "https://pub.dev/packages/flutter_tflite",
              bodyText: "flutter_tflite",
            ),
            UnorderedListLink(
              color: HowestStyle.primaryColor,
              fontSize: 26, 
              link: "https://pub.dev/packages/tflite_flutter",
              bodyText: "tflite_flutter",
            ),
            Text("OCR packages:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold)),
            UnorderedListLink(
              color: HowestStyle.primaryColor,
              fontSize: 26, 
              link: "https://pub.dev/packages/google_mlkit_text_recognition",
              bodyText: "google_mlkit_text_recognition",
            ),
            Text("Annotation tools:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold)),
            UnorderedListLink(
              color: HowestStyle.primaryColor,
              fontSize: 26, 
              link: "https://www.cvat.ai/",
              bodyText: "CVAT",
            ),
            UnorderedListLink(
              color: HowestStyle.primaryColor,
              fontSize: 26, 
              link: "https://app.supervisely.com/",
              bodyText: "Supervisely",
            ),
            UnorderedListLink(
              color: HowestStyle.primaryColor,
              fontSize: 26, 
              link: "https://github.com/HumanSignal/labelImg",
              bodyText: "LabelImg",
            ),
          ],
        ));
  }
}
