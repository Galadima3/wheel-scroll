import 'package:flutter/material.dart';

class MyHours extends StatelessWidget {
  int hours;
  MyHours({Key? key, required this.hours}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(
            hours.toString(),
            style: const TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
