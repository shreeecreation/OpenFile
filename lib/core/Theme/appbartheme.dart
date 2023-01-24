import 'package:flutter/material.dart';

appBars() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 255, 168, 54),
    toolbarHeight: 90,
    elevation: 0.5,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50))),
    title: const Text('Open File', style: TextStyle(fontFamily: "latoregular", fontSize: 24, fontWeight: FontWeight.w300)),
    actions: [
      Row(
        children: [
          Container(
            height: 50,
            width: 50,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 7, spreadRadius: 3, color: Colors.orange)], shape: BoxShape.circle, color: Colors.orange),
            child: const Icon(Icons.search, size: 23),
          ),
          const SizedBox(width: 10),
          Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 7, spreadRadius: 3, color: Colors.orange)], shape: BoxShape.circle, color: Colors.orange),
              child: const Icon(Icons.notifications, size: 23)),
          const SizedBox(width: 20),
        ],
      )
    ],
  );
}

AppBarTheme appBarThemes() {
  return AppBarTheme(elevation: 0, backgroundColor: Colors.blue[800], titleTextStyle: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500));
}
