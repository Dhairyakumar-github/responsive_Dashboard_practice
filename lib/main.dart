import 'package:flutter/material.dart';
import 'package:responsive_practice_first/Screens/desktopScreen.dart';
import 'package:responsive_practice_first/Screens/mobileScreen.dart';
import 'package:responsive_practice_first/Screens/tabletScreen.dart';
import 'package:responsive_practice_first/responsive.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ResponsiveLayout(
        mobile: MobileScreen(),
        tablat: TabletScreen(),
        desktop: DesktopScreen(),
      ),
    );
  }
}
