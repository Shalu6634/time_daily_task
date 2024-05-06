import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

import '../utils/global.dart';

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
        if (dateTime.hour > 11) {
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
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1507400492013-162706c8c05e?q=80&w=2159&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(

                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                          '${dateTime.hour % 12} : ${dateTime.minute} : ${dateTime.second}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '$time',
                          style: const TextStyle(
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
                          style:const  TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                       const  TextSpan(
                          text: ', ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '${dateTime.day} ',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: month,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120, top:530),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed('/analogue');
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Colors.black12,
                                    Colors.white,
                                  ]
                              ),
                              border: Border.all(color: Colors.blueGrey,width: 2),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white12,
                            ),
                            child:const  Center(
                              child: Text(
                                'Analogue',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20
                                ),
                              ),
                            ),
                          ),
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
