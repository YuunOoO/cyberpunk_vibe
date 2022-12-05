import 'package:flutter/material.dart';

class MainCard extends CustomPainter {
  MainCard(this.color);
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15.16;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0275944, size.height * 0.1273271);
    path0.lineTo(size.width * 0.0832000, size.height * 0.0505676);
    path0.lineTo(size.width * 0.9180111, size.height * 0.0510836);
    path0.lineTo(size.width * 0.9722222, size.height * 0.1272859);
    path0.lineTo(size.width * 0.9722222, size.height * 0.9793602);
    path0.lineTo(size.width * 0.0816667, size.height * 0.9786791);
    path0.lineTo(size.width * 0.0266667, size.height * 0.9019608);
    path0.lineTo(size.width * 0.0275944, size.height * 0.1273271);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(size.width * 0.0275944, size.height * 0.1273271);
    path1.lineTo(size.width * 0.0832000, size.height * 0.0505676);
    path1.lineTo(size.width * 0.9180111, size.height * 0.0510836);
    path1.lineTo(size.width * 0.9722222, size.height * 0.1272859);
    path1.lineTo(size.width * 0.9722222, size.height * 0.9793602);
    path1.lineTo(size.width * 0.0816667, size.height * 0.9786791);
    path1.lineTo(size.width * 0.0266667, size.height * 0.9019608);
    path1.lineTo(size.width * 0.0275944, size.height * 0.1273271);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
