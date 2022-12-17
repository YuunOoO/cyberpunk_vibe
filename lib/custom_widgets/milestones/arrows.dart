import 'package:dario_lopianov/helper/key_to_pixels.dart';
import 'package:flutter/material.dart';

class Arrows {
  final ScrollController scrollController;
  final double y;
  Arrows(this.scrollController, this.y);

  Widget arrowUp(GlobalKey key) {
    return IconButton(
      mouseCursor: SystemMouseCursors.none,
      icon: const Icon(
        Icons.keyboard_double_arrow_up_rounded,
      ),
      color: const Color.fromARGB(188, 255, 235, 59),
      iconSize: 60,
      onPressed: () {
        scrollController.animateTo(getVerticalPixels(key) + y,
            duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
      },
    );
  }

  Widget arrowDown(GlobalKey key) {
    return IconButton(
      mouseCursor: SystemMouseCursors.none,
      icon: const Icon(Icons.keyboard_double_arrow_down_rounded),
      color: const Color.fromARGB(188, 255, 235, 59),
      iconSize: 60,
      onPressed: () {
        print(getVerticalPixels(key));
        print(y);
        scrollController.animateTo(getVerticalPixels(key) + y,
            duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
      },
    );
  }
}
