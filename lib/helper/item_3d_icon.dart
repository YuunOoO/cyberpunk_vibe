import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget getIcon(int index) {
  if (index == 0) {
    return const FlutterLogo(
      size: 140,
    );
  } else if (index == 1) {
    return const Icon(
      FontAwesomeIcons.gitAlt,
      color: Colors.black,
      size: 160,
    );
  } else if (index == 2) {
    return const Icon(
      FontAwesomeIcons.gears,
      color: Colors.black,
      size: 160,
    );
  } else if (index == 3) {
    return const Icon(
      FontAwesomeIcons.screwdriverWrench,
      color: Colors.black,
      size: 160,
    );
  } else {
    return const Icon(
      FontAwesomeIcons.computer,
      color: Colors.black,
      size: 160,
    );
  }
}
