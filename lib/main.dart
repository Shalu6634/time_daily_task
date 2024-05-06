import 'package:flutter/material.dart';
import 'Button_page.dart';
import 'ClockApp/Analogue_clock.dart';
import 'ClockApp/Strap_clock.dart';
import 'ClockApp/digital_clock.dart';


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