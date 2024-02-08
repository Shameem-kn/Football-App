import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manu_app_1/utils/colors.dart';
import 'package:manu_app_1/view/player_details.dart';
import 'package:manu_app_1/widgets/ad_banner.dart';
import 'package:manu_app_1/widgets/ad_card.dart';
import 'package:manu_app_1/widgets/app_bar.dart';
import 'package:manu_app_1/widgets/fixture_card.dart';
import 'package:manu_app_1/widgets/heading_text_homepage.dart';
import 'package:manu_app_1/widgets/merchandise_card.dart';

import 'package:manu_app_1/widgets/player_card.dart';
import 'package:manu_app_1/widgets/test_fixture.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool adVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: adVisible,
          child: Container(
            padding: const EdgeInsets.only(left: 20),
            height: 53.h,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "40% OFF selected lines",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 70.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: Colors.white,
                            )),
                        child: const Center(
                          child: Text(
                            "Shop",
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            adVisible = !adVisible;
                          });
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(children: [
            Column(
              children: [
                const CustomHeading(heading: "MATCHES"),
                SizedBox(
                  height: 130.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return FiXtureCard(index: index);
                    },
                  ),
                ),
                const CustomHeading(heading: "BUY NOW"),
                const AdCard(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomHeading(heading: "PLAYERS"),
                    TextButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "View all>",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 184.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => PlayerDetails())));
                          },
                          child: const PlayerCard());
                    },
                  ),
                ),
                const AdBanner(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomHeading(heading: "NEW ARRIVALS"),
                    TextButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "View all>",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ))
                  ],
                ),
                Container(
                  width: 326.w,
                  height: 213.h,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [MerchCard(), MerchCard()],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ]),
        )
      ],
    );
  }
}
