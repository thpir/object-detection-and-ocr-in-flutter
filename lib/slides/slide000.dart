import 'package:flutter/material.dart';

class Slide000 extends StatelessWidget {
  const Slide000({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 500, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Object detection & OCR in Flutter",
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 80,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  "Thijs Pirmez",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Image.asset(
                "assets/images/flutter_dash.png",
                fit: BoxFit.contain,
                width: 200,
                height: 200,
            
              ),
            ),
          )
        ],
      ),
    );
  }
}
