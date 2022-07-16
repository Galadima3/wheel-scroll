import 'package:flutter/material.dart';

class AmPm extends StatelessWidget {
  bool isItAm;
  AmPm({Key? key, required this.isItAm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(
            isItAm == true ? 'AM' : 'PM', 
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
