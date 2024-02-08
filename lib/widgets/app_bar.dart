import 'package:flutter/material.dart';
import 'package:manu_app_1/utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: manchesterRedColour,
      leading: const Icon(
        Icons.calendar_month,
        size: 25,
      ),
      title: Center(
        child: Image.asset(
          "assets/images/manchester_logo_white.png",
          width: 45,
          height: 45,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart,
            size: 25,
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}

AppBar customAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: manchesterRedColour,
    leading: const Icon(
      Icons.calendar_month,
      size: 25,
    ),
    title: Center(
      child: Image.asset(
        "assets/images/manchester_logo_white.png",
        width: 45,
        height: 45,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.shopping_cart,
          size: 25,
        ),
      )
    ],
  );
}
