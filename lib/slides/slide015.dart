import 'package:flutter/material.dart';

class Slide015 extends StatelessWidget {
  const Slide015({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black
                    ),
                    children: [
                      TextSpan(text: "Next: ", style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "label all the data… 😴 and exporting your labeled dataset. ")
                    ]
                  )
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black
                    ),
                    children: [
                      TextSpan(text: "Tools: ", style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "CVAT or Supervisely")
                    ]
                  )
                ),
                Center(
                  child: Image.asset(
                    "assets/images/qr_supervisely.png",
                    scale: 1.2,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset("assets/images/supervisely_screenshot.png")
          )
        ],
      ),
    );
  }
}