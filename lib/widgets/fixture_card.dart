import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manu_app_1/utils/colors.dart';
import 'package:manu_app_1/widgets/custom_container.dart';

class FiXtureCard extends StatelessWidget {
  final int index;
  const FiXtureCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    Color cardColor1;
    Color cardColor2;
    Color textColor;

    (index % 2 == 0)
        ? (
            cardColor1 = lightmanchesterRedColour,
            cardColor2 = manchesterRedColour,
            textColor = Colors.white,
          )
        : (
            cardColor1 = darkGreyColour,
            cardColor2 = lightGreyColour,
            textColor = Colors.black,
          );
    return Row(
      children: [
        SizedBox(
          width: 20.w,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(14.0),
          child: Container(
            width: 250.w,
            height: 140.h,
            color: cardColor2,
            child: CustomPaint(
              painter: DiagonalSplitPainter(color: cardColor1),
              child: Padding(
                padding: EdgeInsets.all(6.h),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "  Premier League",
                        style: TextStyle(fontSize: 12, color: textColor),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Image.asset(
                              "assets/images/manchester_logo_white.png",
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 70,
                              height: 40,
                              child: Text(
                                "Manchester united",
                                maxLines: 3,
                                textAlign: TextAlign.center,
                                // overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 10,
                                ),
                              ),
                            )

                            // Text("manchester united")
                          ],
                        ),
                        Text(
                          "4",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 20,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "sunday 12 nov",
                              style: TextStyle(
                                color: textColor,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              "Yesterday",
                              style: TextStyle(
                                color: textColor,
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 70.w,
                                height: 25.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      color: textColor,
                                    )),
                                child: Center(
                                  child: Text(
                                    "Set Reminder",
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "3",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 20,
                          ),
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/copenhagen_logo.png",
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 70,
                              height: 40,
                              child: Text(
                                "Copenhagen",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                // overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DiagonalSplitPainter extends CustomPainter {
  final Color color;

  DiagonalSplitPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();

    canvas.drawPath(
      Path()
        ..moveTo(160, size.height)
        ..lineTo(0, size.height)
        ..lineTo(0, 0)
        ..lineTo(80, 0)
        ..close(),
      paint..color = color,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
