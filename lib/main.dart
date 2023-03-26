import 'package:flutter/material.dart';
import 'package:ui_shop_app/screens/constants.dart';
import 'package:ui_shop_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Shop App',
      theme: ThemeData(
      
          scaffoldBackgroundColor: backgroundColor,
          primarySwatch: Colors.blue,
          fontFamily: "Gordita",
          textTheme: const TextTheme(
            bodySmall: TextStyle(color: Colors.black54),
          )),
      home: const HomeScreen(),
    );
  }
}
