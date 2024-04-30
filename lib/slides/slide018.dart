import 'package:flutter/material.dart';

class Slide018 extends StatelessWidget {
  const Slide018({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "When exporting your dataset from Supervisely, there is also a .yaml file exported. The .yaml file contains the path to your prepared dataset + metadata",
            style: TextStyle(
              fontSize: 40,
              color: Colors.black
            ),
          ),
          Image.asset(
            "assets/images/yaml_file.png",
            scale: 1.4,
          )
        ],
      ),
    );
  }
}