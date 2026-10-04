import 'package:flutter/material.dart';
import 'package:ox_game/features/Home/home_screen.dart';

class OxApp extends StatelessWidget {
  const OxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OX Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}