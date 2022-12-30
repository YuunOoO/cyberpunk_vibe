import 'package:flutter/material.dart';

class Item3D extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Color.fromARGB(255, 165, 164, 164)
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.0025000);
    path0.lineTo(0, size.height * 0.8500000);
    path0.lineTo(size.width * 0.2033333, size.height);
    path0.lineTo(size.width * 0.7366667, size.height);
    path0.lineTo(size.width * 0.7366667, size.height * 0.5875000);
    path0.lineTo(size.width * 0.8333333, size.height * 0.4775000);
    path0.lineTo(size.width * 0.8333333, size.height * 0.0400000);
    path0.lineTo(size.width * 0.7733333, 0);
    path0.lineTo(0, 0);

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    Path path1 = Path();
    path1.moveTo(0, size.height * 0.0025000);
    path1.lineTo(0, size.height * 0.8500000);
    path1.lineTo(size.width * 0.2033333, size.height);
    path1.lineTo(size.width * 0.7366667, size.height);
    path1.lineTo(size.width * 0.7366667, size.height * 0.5875000);
    path1.lineTo(size.width * 0.8333333, size.height * 0.4775000);
    path1.lineTo(size.width * 0.8333333, size.height * 0.0400000);
    path1.lineTo(size.width * 0.7733333, 0);
    path1.lineTo(0, 0);

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
