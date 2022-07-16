import 'package:flutter/material.dart';

class MyMinutes extends StatelessWidget {
  int mins;
  MyMinutes({Key? key, required this.mins}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(
            // ignore: prefer_interpolation_to_compose_strings
            mins < 10 ? '0' + mins.toString() : mins.toString(),
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
