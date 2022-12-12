import 'package:flutter/material.dart';

class AppBarButton extends CustomPainter {
  final bool hover;

  AppBarButton(this.hover);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 10;
    if (hover) {
      paint0..color = Color.fromARGB(201, 230, 12, 12);
    }

    Path path0 = Path();
    path0.moveTo(size.width, size.height * 0.0300000);
    path0.lineTo(size.width * 0.8633333, size.height * 0.9100000);
    path0.lineTo(size.width * 0.6466667, size.height * 0.9100000);
    path0.lineTo(size.width * 0.6733333, size.height * 0.7900000);
    path0.lineTo(size.width * 0.5666667, size.height * 0.7900000);
    path0.lineTo(size.width * 0.5433333, size.height * 0.9100000);
    path0.lineTo(size.width * 0.2900000, size.height * 0.9100000);
    path0.lineTo(size.width * 0.3066667, size.height * 0.8000000);
    path0.lineTo(size.width * 0.2100000, size.height * 0.8000000);
    path0.lineTo(size.width * 0.1866667, size.height * 0.9100000);
    path0.lineTo(size.width * 0.0033333, size.height * 0.9200000);
    path0.lineTo(size.width * 0.1800000, size.height * 0.0300000);
    path0.lineTo(size.width * 0.7700000, size.height * 0.0400000);
    path0.lineTo(size.width * 0.7600000, size.height * 0.1500000);
    path0.lineTo(size.width * 0.8533333, size.height * 0.1500000);
    path0.lineTo(size.width * 0.8700000, size.height * 0.0300000);
    path0.lineTo(size.width, size.height * 0.0300000);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = Color.fromARGB(172, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    Path path1 = Path();
    path1.moveTo(size.width, size.height * 0.0300000);
    path1.lineTo(size.width * 0.8633333, size.height * 0.9100000);
    path1.lineTo(size.width * 0.6466667, size.height * 0.9100000);
    path1.lineTo(size.width * 0.6733333, size.height * 0.7900000);
    path1.lineTo(size.width * 0.5666667, size.height * 0.7900000);
    path1.lineTo(size.width * 0.5433333, size.height * 0.9100000);
    path1.lineTo(size.width * 0.2900000, size.height * 0.9100000);
    path1.lineTo(size.width * 0.3066667, size.height * 0.8000000);
    path1.lineTo(size.width * 0.2100000, size.height * 0.8000000);
    path1.lineTo(size.width * 0.1866667, size.height * 0.9100000);
    path1.lineTo(size.width * 0.0033333, size.height * 0.9200000);
    path1.lineTo(size.width * 0.1800000, size.height * 0.0300000);
    path1.lineTo(size.width * 0.7700000, size.height * 0.0400000);
    path1.lineTo(size.width * 0.7600000, size.height * 0.1500000);
    path1.lineTo(size.width * 0.8533333, size.height * 0.1500000);
    path1.lineTo(size.width * 0.8700000, size.height * 0.0300000);
    path1.lineTo(size.width, size.height * 0.0300000);
    path1.close();

    if (hover) {
      canvas.drawPath(path1, paint1);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
