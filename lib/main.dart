import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int score = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nabin Dhami")),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          setState(() {
            score = score + 1;
          });
        },
      ),
      body: Column(
        children: [
          const Center(child: Center(child: Text("Hello World!!"))),
          Text(
            '$score',
          ),
        ],
      ),
    );
  }
}
