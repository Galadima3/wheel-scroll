// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wheel_scroll/am_pm.dart';
import 'package:wheel_scroll/hours.dart';
import 'package:wheel_scroll/minutes.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    
    super.initState();
    _controller = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //hours wheel
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              controller: _controller,
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 13,
                  builder: (context, index) {
                    return MyHours(hours: index);
                  }),
            ),
          ),
          const SizedBox(
            width: 10,
          ),

          //minutes wheel
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              controller: _controller,
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 60,
                  builder: (context, index) {
                    return MyMinutes(
                      mins: index,
                    );
                  }),
            ),
          ),
          const SizedBox(
            width: 10,
          ),

          //am or pm
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              controller: _controller,
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 2,
                  builder: (context, index) {
                    if (index == 0) {
                      return AmPm(isItAm: true);
                    } else {
                      return AmPm(isItAm: false);
                    }
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
