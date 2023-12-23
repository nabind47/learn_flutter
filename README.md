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

### Stateless Widget

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

### Statefull Widget

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

## Widgets and Looping around Widgets

```dart
body: Container(
  child: Column(
    children: const [
      ListTile(
        leading: Icon(Icons.computer),
        trailing: Icon(Icons.more_horiz),
        title: Text("Computer Engineering"),
        subtitle: Text("Bachelors in Computer Engineering"),
        tileColor: Colors.pink,
      ),
      Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: ListTile(
          leading: Icon(Icons.computer),
          trailing: Icon(Icons.more_horiz),
          title: Text("Software Engineering"),
          subtitle: Text("Bachelors in Software Engineering"),
          tileColor: Colors.pink,
        ),
      ),
    ],
  ),
),
```

### List View Builder

```dart
body: Container(
  child: ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: ListTile(
          leading: Icon(Icons.computer),
          trailing: Icon(Icons.more_horiz),
          title: Text("Computer Engineering"),
          subtitle: Text("Bachelors in Computer Engineering"),
          tileColor: Colors.pink,
        ),
      );
    }),
),
```

## Routing and Dynamic Routing

```dart
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Settings")),
        body: Container(child: const Text("Settings Screen")));
  }
}
```

> `GestureDetector` such that navigation can be applied with other widgets

```dart
body: Column(
  children: [
    IconButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const SettingsScreen()));
        },
        icon: const Icon(Icons.settings))
  ],
),
```

> `Navigator.pushReplacement()` such that we dont allow to get back

##
