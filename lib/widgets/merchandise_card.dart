import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manu_app_1/utils/colors.dart';
import 'package:manu_app_1/view/selected_merch.dart';

class MerchCard extends StatelessWidget {
  const MerchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      elevation: 4,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => SelectedMerchPage()));
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          width: 140.w,
          height: 213.h,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    size: 15,
                  ),
                  Text(
                    "Rs 2500",
                    style: TextStyle(
                        fontSize: 12,
                        color: manchesterRedColour,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 120.w,
                    height: 134.h,
                    child: Image.asset("assets/images/merch.png"),
                  )),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 97.w,
                    height: 40.h,
                    child: const Text(
                      "Manchester United adidas away t shirt ",
                      maxLines: null,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
