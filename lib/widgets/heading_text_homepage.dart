import 'package:flutter/material.dart';

class CustomHeading extends StatelessWidget {
  final String heading;
  const CustomHeading({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
        child: Text(
          heading,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
