import 'package:flutter/material.dart';

class ProgressArc extends CustomPainter {
  bool isBackground;
  Color progressColor;
  double arcLength;
  int dynamicPoint;
  double gapSize;

  ProgressArc(
      {Key? key,
      required this.isBackground,
      required this.progressColor,
      required this.arcLength,
      required this.dynamicPoint,
      required this.gapSize});

  @override
  void paint(Canvas canvas, Size size) {
    const rect = Rect.fromLTRB(0, 0, 300, 300);
    final double gap = arcLength / 180 * gapSize;
    final double angle = arcLength / dynamicPoint;

    final Paint paint = Paint()
      ..color = progressColor
      ..strokeWidth = 20
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    for (int i = 0; i < dynamicPoint; i++) {
      canvas.drawArc(
          rect,
          -(gap +
              angle *
                  i), // remove "-" of startAngle and sweepAngle to draw bottom half circle instead of top half
          -(angle - gap * 2),
          false,
          paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
