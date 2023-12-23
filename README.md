# [Mobile App Development Course](https://www.youtube.com/watch?v=bE7CgftuaPE&list=PLlI_C5xe_7PxdqygFgK8joTck1TKQAPaH&index=6&ab_channel=TechPana)

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(title: const Text("Nabin Dhami")),
    body: const Column(
      children: [
        Center(child: Text("Hello World!!")),
      ],
    ),
  )));
}
```

## Stateless Widget
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nabin Dhami")),
      body: const Co
      lumn(
        children: [
          Center(child: Center(child: Text("Hello World!!"))),
        ],
      ),
    );
  }
}
```


## Statefull Widget
```dart
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
```