import 'package:flutter/material.dart';

class ContainerWaveBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color(0xFF30B6C5)
      ..style = PaintingStyle.fill;

    var path = Path();

    // نقطة البداية
    path.moveTo(0, 0);

    // التموج العلوي
    path.lineTo(0, size.height * 0.05);
    path.quadraticBezierTo(
        size.width * 0.25, 0, size.width * 0.5, size.height * 0.05);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.1, size.width, size.height * 0.05);

    // الخط المستقيم للجانب
    path.lineTo(size.width, size.height * 0.90);

    // التموج السفلي
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.95,
        size.width * 0.5, size.height * 0.90);
    path.quadraticBezierTo(
        size.width * 0.25, size.height * 0.85, 0, size.height * 0.90);

    // إغلاق المسار
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
