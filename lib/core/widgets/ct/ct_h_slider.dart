import 'package:flutter/material.dart';

class CTHorizontalSlider extends StatelessWidget {
  const CTHorizontalSlider({
    required this.children,
    this.height,
    this.visibleItems = 1,
    super.key,
  });

  final double? height;
  final double visibleItems;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: children.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width / visibleItems,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: children.elementAt(index),
            ),
          );
        },
      ),
    );
  }
}
