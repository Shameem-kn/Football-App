import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manu_app_1/utils/colors.dart';
import 'package:manu_app_1/view/selected_merch.dart';
import 'package:manu_app_1/widgets/app_bar.dart';
import 'package:manu_app_1/widgets/merchandise_card.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 32, 20, 16),
                  child: Text(
                    "UNITED ESSENTIALS",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 16.w,
                      height: 138.h,
                      color: Colors.black,
                    ),
                    Container(
                      width: 12.w,
                      height: 138.h,
                      color: manchesterRedColour,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(26.w, 40.h, 26.w, 20.h),
                      width: 158.w,
                      height: 138.h,
                      color: Colors.black,
                      child: Text(
                        "Explore The Newest Collection",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        maxLines: null,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 138.h,
                        child: Image.asset(
                          "assets/images/shop_banner.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 32.w, right: 32.w, bottom: 20.h),
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20.h,
                          crossAxisSpacing: 20.w,
                          mainAxisExtent: 175.w,
                          childAspectRatio: .8),
                      shrinkWrap: true,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: ((context) => SelectedMerchPage())));

                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: SelectedMerchPage(),
                                withNavBar:
                                    false, // OPTIONAL VALUE. True by default.
                              );
                            },
                            child: const MerchCard());
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
