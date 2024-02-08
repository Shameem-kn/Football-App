import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manu_app_1/utils/colors.dart';
import 'package:manu_app_1/widgets/app_bar.dart';
import 'package:manu_app_1/widgets/custom_navigationbar.dart';

class PlayerDetails extends StatelessWidget {
  const PlayerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Stack(children: [
            Container(
              width: double.infinity,
              height: 220.h,
            ),
            Positioned(
              top: 8.h,
              left: 23.w,
              child: Text(
                "10",
                style: TextStyle(
                    fontSize: 39,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.withOpacity(.7)),
              ),
            ),
            Positioned(
                bottom: 0,
                left: (MediaQuery.of(context).size.width - 170.h) / 2,
                child: CircleAvatar(
                  backgroundColor: manchesterRedColour,
                  radius: 83.h,
                  backgroundImage: AssetImage("assets/images/rash.jpg"),
                )),
            Positioned(
              top: 30.h,
              right: 30.w,
              child: Container(
                width: 49.w,
                height: 36.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(12)),
                child: Image(
                  image: AssetImage(
                    "assets/images/flag.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              "MARCUS RASHFORD",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 3, 30, 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Goals",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 32),
                ),
                Text(
                  "130",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 32),
                )
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 3, 30, 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Appearance",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  "373",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 3, 30, 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Assist",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  "21",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 3, 30, 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Age",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  "26",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Get The Gears Now",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
