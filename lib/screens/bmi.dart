import 'package:bmi/widgets/button.dart';
import 'package:bmi/widgets/gender.dart';
import 'package:bmi/widgets/slider.dart';
import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    var height = 180;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 14, 32),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 14, 32),
        elevation: 0,
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 12),
                child: Gender(Icons.male, 'MALE'),
              )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 12),
                  child: Gender(Icons.female, 'FEMALE'),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 15, 12),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color.fromARGB(255, 29, 30, 50)),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'HEIGHT',
                      style: TextStyle(
                          color: Color.fromARGB(255, 57, 58, 75), fontSize: 20),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('$height',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold)),
                      const Text(
                        'cm',
                        style:
                            TextStyle(color: Color.fromARGB(255, 57, 58, 75)),
                      )
                    ],
                  ),
                  MySlider()
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(14, 8, 15, 20),
                child: CustomButton('WEIGHT', 75),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 14, 20),
                child: CustomButton('AGE', 30),
              )),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 245, 13, 86),
                fixedSize: const Size(double.maxFinite, 70)),
            child: Text(
              'CALCULATE',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
