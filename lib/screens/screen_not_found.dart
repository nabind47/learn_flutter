import 'package:flutter/material.dart';

class ScreenNotFound extends StatelessWidget {
  const ScreenNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: const Center(
        child: Text("404 Not Found"),
      )),
    );
  }
}
