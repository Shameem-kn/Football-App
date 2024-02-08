import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestFiXtureCard extends StatelessWidget {
  const TestFiXtureCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: ClipPath(
        clipper: DiagonalSplitClipper(),
        child: Container(
          width: 279.w,
          height: 140.h,
        ),
      ),
    );
  }
}

class DiagonalSplitClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(164, size.height) // Start from bottom-left corner
      ..lineTo(size.width, size.height) // Draw a line to top-right corner
      ..lineTo(size.width, 0)
      ..lineTo(115, 0) // Draw a line to bottom-right corner
      ..close(); // Close the path

    return path;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paintRed = Paint()..color = Colors.red; // Red color
    final Paint paintGreen = Paint()..color = Colors.green; // Green color

    canvas.drawPath(
      Path()
        ..moveTo(164, size.height)
        ..lineTo(size.width, size.height)
        ..lineTo(size.width, 0)
        ..lineTo(115, 0)
        ..close(),
      paintGreen,
    );

    canvas.drawPath(
      Path()
        ..moveTo(164, size.height)
        ..lineTo(0, size.height)
        ..lineTo(0, 0)
        ..lineTo(115, 0)
        ..close(),
      paintRed,
    );
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
