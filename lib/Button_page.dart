import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Center(
          child: Text(
            'Button',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined'),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            TextButton(
              onPressed: () {},
              child: Text('TextButton'),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
            BackButton(),
            CloseButton(),
          ],
        ),
      ),
    );
  }
}
