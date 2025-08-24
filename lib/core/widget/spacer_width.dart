import 'package:flutter/material.dart';

class SpacerWidth extends StatelessWidget {
  final double width;
  const SpacerWidth({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}
