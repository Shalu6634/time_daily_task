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
        decoration:const  BoxDecoration(
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
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '$time',
                          style:const  TextStyle(
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
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(
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
                            ? const VerticalDivider(
                          thickness: 2,
                          color: Colors.red,
                          indent: 0,
                          endIndent: 160,
                        )
                            : const VerticalDivider(
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
                        decoration: const BoxDecoration(
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
                margin: const EdgeInsets.only(left: 10,top: 330),
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  gradient:const  LinearGradient(colors: [
                    Colors.black12,
                    Colors.white,
                  ]),
                  border: Border.all(color: Colors.blueGrey, width: 2),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white12,
                ),
                child: const Center(
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
