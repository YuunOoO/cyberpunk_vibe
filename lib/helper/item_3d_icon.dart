import 'package:flutter/material.dart';

Widget getIcon(int index) {
  if (index == 0) {
    return const FlutterLogo(
      size: 140,
    );
  } else if (index == 1) {
    return const Icon(
      Icons.bug_report,
      size: 140,
    );
  } else if (index == 2) {
    return const Icon(
      Icons.science,
      size: 140,
    );
  } else {
    return const Icon(
      Icons.computer_outlined,
      size: 140,
    );
  }
}
