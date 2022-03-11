import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String parameter;
  int value;
  CustomButton(this.parameter, this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 29, 30, 50),
          borderRadius: BorderRadius.circular(13)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              parameter,
              style: const TextStyle(
                  color: Color.fromARGB(255, 57, 58, 75), fontSize: 20),
            ),
          ),
          Text('$value',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Color.fromARGB(255, 76, 79, 93),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 23.0,
                  ),
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 2,
                  fillColor: Color.fromARGB(255, 76, 79, 93),
                  child: const Icon(
                    Icons.add,
                    size: 23.0,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
