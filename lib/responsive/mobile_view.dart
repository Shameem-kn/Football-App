import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manu_app_1/utils/colors.dart';

import 'package:manu_app_1/utils/global_variables.dart';
import 'package:manu_app_1/widgets/app_bar.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  int _page = 0;
  late PageController pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
          children: homeScreenItems,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: manchesterRedColour,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _page == 0 ? Colors.red : Colors.grey,
              ),
              label: "HOME",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
                // color: _page == 1 ? Colors.red : Colors.grey,
              ),
              label: "SQUAD",
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shop_2,
                color: _page == 2 ? Colors.red : Colors.grey,
              ),
              label: "SHOP",
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: _page == 3 ? Colors.red : Colors.grey,
              ),
              label: "PROFILE",
              backgroundColor: Colors.grey,
            ),
          ],
          onTap: navigationTapped,
        ));
  }
}
