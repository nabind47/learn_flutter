import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/setting_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int _currIndex = 0;

  @override
  Widget build(BuildContext context) {
    var homePageScreen = Column(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/settings");
            },
            icon: const Icon(Icons.settings))
      ],
    );
    List<Widget> screenList = [homePageScreen, const SettingsScreen()];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currIndex,
          onTap: (value) {
            setState(() {
              _currIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ]),
      body: screenList[_currIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
