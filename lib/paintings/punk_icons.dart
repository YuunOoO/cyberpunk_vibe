import 'package:flutter/material.dart';

class PunkIcons extends CustomPainter {
  PunkIcons(this.hover);
  final bool hover;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 255, 245, 105)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.4;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height * 0.7400000);
    path0.lineTo(size.width * 0.2400000, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, size.height * 0.2600000);
    path0.lineTo(size.width * 0.7500000, 0);
    path0.lineTo(0, 0);

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(181, 214, 226, 53)
      ..style = PaintingStyle.fill;

    Path path1 = Path();
    path1.moveTo(0, 0);
    path1.lineTo(0, size.height * 0.7400000);
    path1.lineTo(size.width * 0.2400000, size.height);
    path1.lineTo(size.width, size.height);
    path1.lineTo(size.width, size.height * 0.2600000);
    path1.lineTo(size.width * 0.7500000, 0);
    path1.lineTo(0, 0);

    if (hover) {
      canvas.drawPath(path1, paint1);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class PunkIcons2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 221, 189, 54)
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.4;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height * 0.0763674);
    path0.lineTo(size.width * 0.0133333, size.height * 0.1031992);
    path0.lineTo(size.width * 0.0555556, size.height * 0.1031992);
    path0.lineTo(size.width * 0.0555556, size.height * 0.0268318);
    path0.lineTo(size.width * 0.0416667, 0);
    path0.lineTo(0, 0);

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.4;

    Path path1 = Path();
    path1.moveTo(0, 0);
    path1.lineTo(0, size.height * 0.0763674);
    path1.lineTo(size.width * 0.0133333, size.height * 0.1031992);
    path1.lineTo(size.width * 0.0555556, size.height * 0.1031992);
    path1.lineTo(size.width * 0.0555556, size.height * 0.0268318);
    path1.lineTo(size.width * 0.0416667, 0);
    path1.lineTo(0, 0);

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
