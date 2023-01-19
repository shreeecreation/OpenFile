import 'package:flutter/material.dart';

appBars() {
  return AppBar(
    title: const Text("Keep Safe"),
    actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
  );
}

AppBarTheme appBarThemes() {
  return AppBarTheme(elevation: 0, backgroundColor: Colors.blue[800], titleTextStyle: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500));
}
