import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            decoration: BoxDecoration(
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
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
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
                          style: TextStyle(
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
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black12,
                                  Colors.white,
                                ]
                              ),
                              border: Border.all(color: Colors.blueGrey,width: 2),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white12,
                            ),
                            child: Center(
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



//analogue


import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

import '../utils/global.dart';

class Analogue extends StatefulWidget {
  const Analogue({super.key});

  @override
  State<Analogue> createState() => _AnalogueState();
}

class _AnalogueState extends State<Analogue> {
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
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://e0.pxfuel.com/wallpapers/513/360/desktop-wallpaper-tumblr-space-star-tumblr.jpg'),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              '${dateTime.hour % 12} : ${dateTime.minute} : ${dateTime.second}',
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
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
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
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: 190,
                width: 190,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.rotate(
                      angle: (dateTime.hour * 30 * pi) / 180,
                      child: const Center(
                        child: VerticalDivider(
                          thickness: 3,
                          color: Colors.red,
                          indent: 50,
                          endIndent: 80,
                        ),
                      ),
                    ),
                    ...List.generate(
                      60,
                      (index) => Transform.rotate(
                        angle: ((index) * 6 * pi) / 180,
                        child: ((index + 1) % 5 == 0)
                            ? VerticalDivider(
                                thickness: 2,
                                color: Colors.red,
                                indent: 0,
                                endIndent: 160,
                              )
                            : VerticalDivider(
                                thickness: 2,
                                color: Colors.grey,
                                indent: 0,
                                endIndent: 170,
                              ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                      ),
                    ),
                    Transform.rotate(
                      angle: (dateTime.second * 6 * pi) / 180,
                      child: const Center(
                        child: VerticalDivider(
                          thickness: 2,
                          color: Colors.red,
                          indent: 25,
                          endIndent: 80,
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: (dateTime.minute * 6 * pi) / 180,
                      child: const Center(
                        child: VerticalDivider(
                          thickness: 2,
                          color: Colors.white,
                          indent: 32,
                          endIndent: 80,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
               setState(() {
                 Navigator.of(context).pushNamed('/strap');
               });
              },
              child: Container(
                margin: EdgeInsets.only(left: 10,top: 330),
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black12,
                    Colors.white,
                  ]),
                  border: Border.all(color: Colors.blueGrey, width: 2),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white12,
                ),
                child: Center(
                  child: Text(
                    ' StrapWatch',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



//strap


import 'package:flutter/material.dart';
import 'dart:async';

import 'package:timer_daily_task/utils/global.dart';

class StrapClock extends StatefulWidget {
  const StrapClock({super.key});

  @override
  State<StrapClock> createState() => _StrapClockState();
}

class _StrapClockState extends State<StrapClock> {
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

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 783,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://e0.pxfuel.com/wallpapers/513/360/desktop-wallpaper-tumblr-space-star-tumblr.jpg'),
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 220,
                    width: 220,
                    child: CircularProgressIndicator(
                      value: dateTime.second / 60,
                      color: Colors.tealAccent,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 210,
                    width: 210,
                    child: CircularProgressIndicator(
                      value: dateTime.minute / 60,
                      color: Colors.teal,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    child: CircularProgressIndicator(
                      value: ((dateTime.hour % 12) + dateTime.minute / 12) / 60,
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5,bottom: 50),
                    child: Text(
                        '${dateTime.hour % 12} : ${dateTime.minute} : ${dateTime.second}$time',
                      style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Text(
                     day, style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    '   ${dateTime.day} ,  ',
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text(
                      month,
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
