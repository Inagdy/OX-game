import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ox_game/features/Home/home_screen.dart';

class OxApp extends StatelessWidget {
  const OxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'OX Game',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomeScreen(),
        );
      },
    );
  }
}