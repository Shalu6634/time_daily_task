import 'package:flutter/material.dart';
// import 'Button_page.dart';
// import 'ClockApp/clock_app.dart';
import 'clock/Strap_clock.dart';
import 'clock/analogue.dart';
import 'clock/digital.dart';

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
