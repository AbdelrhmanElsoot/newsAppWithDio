import 'package:flutter/material.dart';

class SpacerHeight extends StatelessWidget {
  final double height;
  const SpacerHeight({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
