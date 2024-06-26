import 'package:cv_and_ocr_in_flutter/howest_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:intl/intl.dart';

class HowestContentSlide extends FlutterDeckSlideWidget {
  final String title;
  final String? titleIconPath;
  final Widget slideContent;
  final String pageNumber;
  final String route;

  HowestContentSlide(
      {required this.title,
      required this.titleIconPath,
      required this.slideContent,
      required this.pageNumber,
      required this.route})
      : super(
          configuration: FlutterDeckSlideConfiguration(
            route: route,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      backgroundBuilder: (context) => FlutterDeckBackground.solid(
        Theme.of(context).colorScheme.background,
      ),
      contentBuilder: (context) => ColoredBox(
        color: HowestStyle.backgroundColor,
        child: Container(
          color: HowestStyle.backgroundColor,
          width: double.infinity,
          height: double.infinity,
          child: slideContent,
        ),
      ),
      footerBuilder: (context) => ColoredBox(
        color: HowestStyle.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: HowestStyle.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                                "${DateFormat('dd/MM/yyyy').format(DateTime.now())} - Object detection & OCR in Flutter - Thijs Pirmez",
                                style: const TextStyle(
                                  color: HowestStyle.onPrimaryColor,
                                  fontSize: 25,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Text(pageNumber,
                                style: const TextStyle(
                                  color: HowestStyle.onPrimaryColor,
                                  fontSize: 25,
                                )),
                          ),
                        ]),
                  ),
                ),
              ),
              Image.asset(
                "assets/images/howest_logo.webp",
                height: 100,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
      headerBuilder: (context) => ColoredBox(
        color: HowestStyle.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 120, vertical: 60),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(children: [
                if(titleIconPath != null) Image.asset(
                  titleIconPath!,
                  fit: BoxFit.contain,
                  width: 70,
                  height: 70,
                ),
                const SizedBox(width: 40.0),
                Text(
                  title,
                  style: const TextStyle(
                    color: HowestStyle.primaryTextColor,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Nunito',
                  ),
                ),
              ]),
              const SizedBox(height: 8.0),
              const Divider(
                height: 12,
                color: HowestStyle.primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
