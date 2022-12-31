import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget getIcon(int index, double screenWidth) {
  if (index == 0) {
    return FlutterLogo(
      size: screenWidth / 10,
    );
  } else if (index == 1) {
    return Icon(
      FontAwesomeIcons.gitAlt,
      color: Colors.black,
      size: screenWidth / 10,
    );
  } else if (index == 2) {
    return Icon(
      FontAwesomeIcons.gears,
      color: Colors.black,
      size: screenWidth / 10,
    );
  } else if (index == 3) {
    return Icon(
      FontAwesomeIcons.screwdriverWrench,
      color: Colors.black,
      size: screenWidth / 10,
    );
  } else {
    return Icon(
      FontAwesomeIcons.computer,
      color: Colors.black,
      size: screenWidth / 10,
    );
  }
}
