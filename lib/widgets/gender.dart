import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  IconData icon;
  String gender;
  Gender(this.icon, this.gender);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 17, 19, 39),
            borderRadius: BorderRadius.circular(13)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 70,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:35),
              child: Text(
                gender,
                style: TextStyle(color: Color.fromARGB(255, 57, 58, 75), fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
