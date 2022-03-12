import 'package:bmi/widgets/button.dart';
import 'package:bmi/widgets/gender.dart';
import 'package:bmi/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:sweetalert/sweetalert.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  takeSliderValue(int value) {
    _height = value;
    setState(() {});
  }

  weightChange(int value) {
    _weight += value;
    setState(() {});
  }

  compute() {
    double heightm = _height.toDouble() / 100;
    _bmi = _weight.toDouble() / (heightm * heightm);
    _output = _bmi.toStringAsFixed(2);
    print(_bmi);
  }

  ageChange(int value) {
    _age += value;
    setState(() {});
  }

  int _height = 150;
  int _age = 25;
  int _weight = 55;
  double _bmi = 0;
  String _output = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 14, 32),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 14, 32),
        elevation: 0,
        title: const Center(child: Text('BMI CALCULATOR')),
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
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'HEIGHT',
                      style: TextStyle(
                          color: Color.fromARGB(171, 165, 167, 190),
                          fontSize: 20),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('$_height',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold)),
                      const Text(
                        'cm',
                        style: TextStyle(
                            color: Color.fromARGB(171, 165, 167, 190)),
                      )
                    ],
                  ),
                  MySlider(
                    _height,
                    takeSliderValue,
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(14, 8, 15, 20),
                child: CustomButton('WEIGHT', _weight, weightChange),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 14, 20),
                child: CustomButton('AGE', _age, ageChange),
              )),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 245, 13, 86),
                fixedSize: const Size(double.maxFinite, 77)),
            child: const Text(
              'CALCULATE',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              compute();
              showDialog<String>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) => AlertDialog(
                  elevation: 24.0,
                  backgroundColor: const Color.fromARGB(255, 245, 13, 86),
                  title: const Text(
                    'BMI',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  content: Text('Your BMI is $_output',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  actions: <Widget>[
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK',
                            style:
                                TextStyle(color: Colors.white, fontSize: 22)),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
