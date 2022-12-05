import 'package:flutter/material.dart';

class TopAppbar extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 255, 245, 105)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0008333, size.height * 0.0100000);
    path0.lineTo(0, size.height * 0.3700000);
    path0.lineTo(size.width * 0.0075000, size.height * 0.2900000);
    path0.lineTo(size.width * 0.0933333, size.height * 0.2900000);
    path0.lineTo(size.width * 0.0975000, size.height * 0.4100000);
    path0.lineTo(size.width * 0.1033333, size.height * 0.2900000);
    path0.lineTo(size.width * 0.1533333, size.height * 0.2900000);
    path0.lineTo(size.width * 0.1641667, size.height * 0.0800000);
    path0.lineTo(size.width * 0.1683333, size.height * 0.1900000);
    path0.lineTo(size.width * 0.1950000, size.height * 0.1900000);
    path0.lineTo(size.width * 0.2091667, size.height * 0.3900000);
    path0.lineTo(size.width * 0.2475000, size.height * 0.3900000);
    path0.lineTo(size.width * 0.2591667, size.height * 0.2900000);
    path0.lineTo(size.width * 0.3366667, size.height * 0.2900000);
    path0.lineTo(size.width * 0.3458333, size.height * 0.4000000);
    path0.lineTo(size.width * 0.3558333, size.height * 0.2000000);
    path0.lineTo(size.width * 0.3641667, size.height * 0.3000000);
    path0.lineTo(size.width * 0.4975000, size.height * 0.3000000);
    path0.lineTo(size.width * 0.5075000, size.height * 0.1200000);
    path0.lineTo(size.width * 0.5308333, size.height * 0.4000000);
    path0.lineTo(size.width * 0.5400000, size.height * 0.2900000);
    path0.lineTo(size.width * 0.6641667, size.height * 0.2900000);
    path0.lineTo(size.width * 0.6733333, size.height * 0.4500000);
    path0.lineTo(size.width * 0.6891667, size.height * 0.1800000);
    path0.lineTo(size.width * 0.7016667, size.height * 0.3100000);
    path0.lineTo(size.width * 0.7525000, size.height * 0.3100000);
    path0.lineTo(size.width * 0.7641667, size.height * 0.4700000);
    path0.lineTo(size.width * 0.7733333, size.height * 0.3100000);
    path0.lineTo(size.width * 0.8125000, size.height * 0.3100000);
    path0.lineTo(size.width * 0.8283333, size.height * 0.1900000);
    path0.lineTo(size.width * 0.8333333, size.height * 0.2900000);
    path0.lineTo(size.width * 0.8475000, size.height * 0.2100000);
    path0.lineTo(size.width * 0.8575000, size.height * 0.3100000);
    path0.lineTo(size.width * 0.8758333, size.height * 0.2000000);
    path0.lineTo(size.width * 0.8841667, size.height * 0.3000000);
    path0.lineTo(size.width * 0.8925000, size.height * 0.4600000);
    path0.lineTo(size.width * 0.9025000, size.height * 0.3000000);
    path0.lineTo(size.width * 0.9408333, size.height * 0.2900000);
    path0.lineTo(size.width * 0.9833333, size.height * 0.2900000);
    path0.lineTo(size.width * 0.9991667, size.height * 0.1400000);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width * 0.0016667, 0);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
