import 'package:cv_and_ocr_in_flutter/howest_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class HowestTitleSlide extends FlutterDeckSlideWidget {
  final Widget slideContent;
  final String route;

  HowestTitleSlide(
      {required this.slideContent,
      required this.route})
      : super(
          configuration: FlutterDeckSlideConfiguration(
            route: route,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      backgroundBuilder: (context) => const FlutterDeckBackground.gradient(
        LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          stops: [0.2, 0.2],
          colors: [
            HowestStyle.backgroundColor,
            HowestStyle.primaryColor
          ]
        )
      ),
      contentBuilder: (context) => slideContent,
      headerBuilder: (context) => ColoredBox(
        color: Colors.transparent,
        child: Image.asset(
                "assets/images/howest_neutraal.webp",
                fit: BoxFit.contain,
                width: 800,
              ),
      ),
    );
  }
}
