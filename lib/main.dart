import 'package:flutter/material.dart';

import 'package:time_daily_task/ClockApp/digital_clock.dart';
import 'package:time_daily_task/ClockApp/Analogue_clock.dart';
import 'package:time_daily_task/ClockApp/Strap_clock.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context)=>ClockApp(),
        '/analogue':(context)=>Analogue(),
        '/strap':(context)=>StrapClock(),
      },
    );
  }
}
