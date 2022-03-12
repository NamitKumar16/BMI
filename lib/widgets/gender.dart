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
              padding: const EdgeInsets.only(top: 34),
              child: Icon(
                icon,
                color: Colors.white,
                size: 70,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 34),
              child: Text(
                gender,
                style: TextStyle(
                    color: Color.fromARGB(171, 165, 167, 190), fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
