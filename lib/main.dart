import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Homepage/presentation/homepage_screen.dart';
import 'core/Providers/navbar_provider.dart';
import 'core/Theme/themedata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NavbarCounter>(create: (_) => NavbarCounter()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeData(),
        home: const HomePage(),
      ),
    );
  }
}
