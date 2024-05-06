import 'package:flutter/material.dart';
import 'dart:async';

// import 'package:timer_daily_task/utils/global.dart';

import '../utils/global.dart';

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