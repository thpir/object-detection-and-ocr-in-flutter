import 'package:cv_and_ocr_in_flutter/howest_style.dart';
import 'package:flutter/material.dart';

class OrderedList extends StatelessWidget {
  final int numberOfItems;
  final int activeItem;
  final List<String> activeItems;
  const OrderedList({
    required this.numberOfItems,
    required this.activeItem,
    required this.activeItems,
    super.key
  });

  List<Widget> buildList() {
    final List<Widget> list = [];
    for (int i = 1; i <= numberOfItems; i++) {
      if (i > 1) {
        list.add(
          Container(
            margin: const EdgeInsets.only(left: 38),
            width: 4,
            height: 60,
            color: i > activeItem ? HowestStyle.inactiveSecondaryColor : HowestStyle.secondaryColor,
          )
        );
      }
      list.add(
        Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: i > activeItem ? HowestStyle.inactiveSecondaryColor : HowestStyle.secondaryColor,
                borderRadius: BorderRadius.circular(40),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  i.toString(),
                  style: const TextStyle(
                    color: HowestStyle.onPrimaryColor,
                    fontSize: 42,
                  ),
                ),
              ),
            ),
            if (i <= activeItem)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Text(
                    activeItems[i - 1],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 48,
                    ),
                  ),
                ),
              ),
          ],
        )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...buildList()
      ],
    );
  }
}
