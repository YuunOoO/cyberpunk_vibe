import 'package:flutter/material.dart';

double getVerticalPixels(GlobalKey key) {
  RenderBox box = key.currentContext!.findRenderObject() as RenderBox;
  Offset position = box.localToGlobal(Offset.zero);
  return position.dy - 10;
}
