import 'package:flutter/material.dart';

class Slide035 extends StatelessWidget {
  const Slide035({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 128),
        child: Stack(
          children: [
            Image.asset("assets/images/app_number_confirmation.png"),
            const SizedBox(
              width: 600,
              child: Text(
                "OCR returns the silo number, the user can either confirm or rescan.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 42,
                ),
              ),
            ),
          ],
        ));
  }
}
