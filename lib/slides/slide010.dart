import 'package:cv_and_ocr_in_flutter/slides/widgets/unordered_list_item.dart';
import 'package:flutter/material.dart';

class Slide010 extends StatelessWidget {
  const Slide010({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 128.0),
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "Development of a smartphone application that:",
                    style: TextStyle(
                      fontSize: 46,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                ),
                UnorderedListItem(
                  fontSize: 46,
                  bodyText: "Replaces the Silo tag-reader and therefore eliminates the hardware cost for the customer",
                ),
                UnorderedListItem(
                  fontSize: 46,
                  bodyText: "Makes the unloading process dummy-proof",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "How?",
                    style: TextStyle(
                    fontSize: 46,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                UnorderedListItem(
                  fontSize: 46,
                  bodyText: "Object detection for hose / pipe connection check",
                ),
                UnorderedListItem(
                  fontSize: 46,
                  bodyText: "OCR for reading the silo number",
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
                  'assets/images/silo_connect_homepage.png',
                  fit: BoxFit.fitHeight,
                ),
          )
        ],
      ),
    );
  }
}

class Bullet extends StatelessWidget {
  final String text;
  const Bullet({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            "• ",
            style: TextStyle(
              fontSize: 46,
              color: Colors.black
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 46,
                  color: Colors.black
                )
            ),
          ),
        ],
      ),
    );
  }
}
