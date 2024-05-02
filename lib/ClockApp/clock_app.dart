import 'dart:async';

import 'package:clock_app/utils/global.dart';
import 'package:flutter/material.dart';
// import 'package:time_daily_task/utils/global.dart';

class ClockApp extends StatefulWidget {
  const ClockApp({super.key});

  @override
  State<ClockApp> createState() => _ClockAppState();
}

class _ClockAppState extends State<ClockApp> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
        if (dateTime.hour > 12) {
          time = 'pm';
        } else {
          time = 'am';
        }
        switch (dateTime.weekday) {
          case 1:
            day = 'Mon';
            break;
          case 2:
            day = 'Tue';
            break;
          case 3:
            day = 'Wed';
            break;
          case 4:
            day = 'Thu';
            break;
          case 5:
            day = 'Fri';
            break;
          case 6:
            day = 'Sat';
            break;
          case 7:
            day = 'Sun';
            break;
        }

        switch (dateTime.month) {
          case 1:
            month = 'Jan';
            break;
          case 2:
            month = 'Feb';
            break;
          case 3:
            month = 'March';
            break;
          case 4:
            month = 'April';
            break;
          case 5:
            month = 'May';
            break;
          case 6:
            month = 'June';
            break;
          case 7:
            month = 'July';
            break;
          case 8:
            month = 'August';
            break;
          case 9:
            month = 'Sept';
            break;
          case 10:
            month = 'Oct';
            break;
          case 11:
            month = 'Nov';
            break;
          case 12:
            month = 'Dec';
            break;
        }
      });
    });
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/1.jpg'),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 110),
              child: Column(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${dateTime.hour} : ${dateTime.minute}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '$time',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: day,
                          style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ', ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '${dateTime.day} ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: month,
                          style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
