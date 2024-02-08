import 'package:flutter/material.dart';
import 'package:manu_app_1/utils/global_variables.dart';
import 'package:manu_app_1/widgets/app_bar.dart';
import 'package:manu_app_1/widgets/custom_navigationbar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // List<Widget> _widgetOptions = <Widget>[
  //   HomeScreen(),
  //   SquadScreen(),
  //   ShopScreen(),
  //   ProfileScreen(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: homeScreenItems.elementAt(_selectedIndex),
        bottomNavigationBar: CustomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            _onItemTapped(index);
          },
        ));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
