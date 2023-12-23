import 'package:learn_flutter/screens/home_screen.dart';
import 'package:learn_flutter/screens/setting_screen.dart';

var routes = {
  "/": (_) => const MyHomePage(title: "Home"),
  "/settings": (_) => const SettingsScreen(),
};
