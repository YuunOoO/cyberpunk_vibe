import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(216, 99, 170, 109)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 11.67;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0183333, size.height * 0.9185714);
    path0.lineTo(size.width * 0.0191667, size.height * 0.1200000);
    path0.lineTo(size.width * 0.0666667, size.height * 0.0571429);
    path0.lineTo(size.width * 0.9258333, size.height * 0.0557143);
    path0.lineTo(size.width * 0.9658333, size.height * 0.1242857);
    path0.lineTo(size.width * 0.9675000, size.height * 0.9785714);
    path0.lineTo(size.width * 0.0591667, size.height * 0.9828571);
    path0.lineTo(size.width * 0.0183333, size.height * 0.9185714);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 24, 21, 21)
      ..style = PaintingStyle.fill;

    Path path1 = Path();
    path1.moveTo(size.width * 0.0183333, size.height * 0.9185714);
    path1.lineTo(size.width * 0.0191667, size.height * 0.1200000);
    path1.lineTo(size.width * 0.0666667, size.height * 0.0571429);
    path1.lineTo(size.width * 0.9258333, size.height * 0.0557143);
    path1.lineTo(size.width * 0.9658333, size.height * 0.1242857);
    path1.lineTo(size.width * 0.9675000, size.height * 0.9785714);
    path1.lineTo(size.width * 0.0591667, size.height * 0.9828571);
    path1.lineTo(size.width * 0.0183333, size.height * 0.9185714);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
