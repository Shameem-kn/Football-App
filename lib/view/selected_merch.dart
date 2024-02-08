import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manu_app_1/widgets/app_bar.dart';

class SelectedMerchPage extends StatefulWidget {
  const SelectedMerchPage({super.key});

  @override
  State<SelectedMerchPage> createState() => _SelectedMerchPageState();
}

class _SelectedMerchPageState extends State<SelectedMerchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 320.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/jersey.jpg",
                          ),
                          fit: BoxFit.contain),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: null,
    );
  }
}
