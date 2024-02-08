import 'package:flutter/material.dart';
import 'package:manu_app_1/utils/colors.dart';
import 'package:manu_app_1/view/home_page.dart';
import 'package:manu_app_1/view/shop_view.dart';
import 'package:manu_app_1/widgets/app_bar.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class PersNavigation extends StatefulWidget {
  const PersNavigation({super.key});

  @override
  State<PersNavigation> createState() => _PersNavigationState();
}

class _PersNavigationState extends State<PersNavigation> {
  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const Text("shop"),
      const ShopPage(),
      const Text("profile"),
    ];
  }

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      bottomNavigationBar: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.black, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        // decoration: NavBarDecoration(
        //   borderRadius: BorderRadius.circular(10.0),
        //   colorBehindNavBar: Colors.white,
        // ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        // screenTransitionAnimation: const ScreenTransitionAnimation(
        //   // Screen transition animation on change of selected tab.
        //   animateTabTransition: true,
        //   curve: Curves.ease,
        //   duration: Duration(milliseconds: 200),
        // ),
        navBarStyle:
            NavBarStyle.style6, // Choose the nav bar style with this property.
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: manchesterRedColour,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.group),
        title: ("Squad"),
        activeColorPrimary: manchesterRedColour,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.shop_2),
        title: ("Shop"),
        activeColorPrimary: manchesterRedColour,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: ("Profile"),
        activeColorPrimary: manchesterRedColour,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}
