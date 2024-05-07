import 'package:flutter/material.dart';

class Slide004 extends StatelessWidget {
  const Slide004({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
              "assets/images/cyber3lab_long.jpg",
              fit: BoxFit.contain,
              height: 150,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  "“At Howest, our research unit is at the forefront of supporting you in cybersecurity and immersive technology, particularly within a decentralized AI landscape.”",
                  style: TextStyle(
                    fontSize: 56,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: Image.asset(
              "assets/images/qr_cyber3lab.png",
              fit: BoxFit.contain,
              width: 500,
              height: 500,)
          ),
        )
      ],
    );
  }
}