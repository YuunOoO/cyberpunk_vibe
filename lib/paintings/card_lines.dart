import 'package:flutter/material.dart';

class CardLines extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Color.fromARGB(136, 255, 238, 1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7.13;

    Paint paintCircle = Paint()
      ..color = Color.fromARGB(237, 255, 238, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 7.13;

    Path path0 = Path();

    path0.moveTo(size.width * 0.0666667, size.height * 0.6829721);
    path0.lineTo(size.width * 0.3227778, size.height * 0.6816821);
    path0.lineTo(size.width * 0.3227778, size.height * 0.5353973);
    path0.lineTo(size.width * 0.3966667, size.height * 0.4507740);
    path0.lineTo(size.width * 0.7973611, size.height * 0.4494840);

    Paint paintCircle1 = Paint()
      ..color = Color.fromARGB(255, 141, 9, 9)
      ..style = PaintingStyle.fill
      ..strokeWidth = 7.13;

    Paint paint1 = Paint()
      ..color = Color.fromARGB(214, 160, 14, 14)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7.13;

    canvas.drawPath(path0, paint1);
    canvas.drawCircle(Offset(size.width * 0.0666667, size.height * 0.6829721),
        12, paintCircle1);

    Path path1 = Path();

    path1.moveTo(size.width * 0.2050000, size.height * 0.7655315);
    path1.lineTo(size.width * 0.4147222, size.height * 0.7652735);
    path1.lineTo(size.width * 0.4155556, size.height * 0.8666667);
    path1.lineTo(size.width * 0.4555556, size.height * 0.9007224);
    path1.lineTo(size.width * 0.7125000, size.height * 0.9007224);

    canvas.drawPath(path1, paint0);
    canvas.drawCircle(Offset(size.width * 0.2050000, size.height * 0.7655315),
        12, paintCircle);

    Path path2 = Path();

    path2.moveTo(size.width * 0.1672222, size.height * 0.5633643);
    path2.lineTo(size.width * 0.2555556, size.height * 0.5643963);
    path2.lineTo(size.width * 0.2561111, size.height * 0.3611971);
    path2.lineTo(size.width * 0.3200000, size.height * 0.2590299);
    path2.lineTo(size.width * 0.8644444, size.height * 0.2559340);
    path2.lineTo(size.width * 0.8955556, size.height * 0.3591331);
    path2.lineTo(size.width * 0.9361111, size.height * 0.3601651);

    canvas.drawPath(path2, paint0);
    canvas.drawCircle(Offset(size.width * 0.1672222, size.height * 0.5633643),
        12, paintCircle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
