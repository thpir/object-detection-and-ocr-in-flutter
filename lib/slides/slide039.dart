import 'package:cv_and_ocr_in_flutter/howest_style.dart';
import 'package:flutter/material.dart';

class Slide039 extends StatelessWidget {
  const Slide039
({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 205,
            backgroundColor: Colors.black26,
            child: CircleAvatar(
              radius: 200,
              backgroundImage: AssetImage("assets/images/thijs_square.jpg"),
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Thijs Pirmez",
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 80,
                  fontWeight: FontWeight.bold
                )
              ),
              Text(
                "Flutter developer & applied AI researcher",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: HowestStyle.primaryColor
                )
              )
            ],
          ),
          Image.asset(
            "assets/images/qr_linkedin.png",
            height: 400,
            fit: BoxFit.contain,
          )
        ],
      )
    );
  }
}