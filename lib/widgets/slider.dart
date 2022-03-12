import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  int height;
  Function fn;
  MySlider(this.height, this.fn);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Slider(
          thumbColor: Color.fromARGB(255, 245, 13, 86),
          activeColor: Colors.white,
          inactiveColor: Colors.grey.shade700,
          min: 80,
          max: 200,
          value: height.toDouble(),
          onChanged: (double value) {
            fn(value.toInt());
          }),
    );
  }
}
