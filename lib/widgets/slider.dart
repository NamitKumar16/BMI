import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Slider(min: 0, max: 100, value: 6, onChanged: (double value) {}),
    );
  }
}
