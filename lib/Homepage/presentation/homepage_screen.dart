import 'package:flutter/material.dart';
import 'package:openfolder/core/Theme/appbartheme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: const Drawer(), appBar: appBars(), body: const Text("dasdas"));
  }
}
