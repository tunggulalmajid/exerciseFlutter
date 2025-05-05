import 'package:belajarflutter2/pages/home_page.dart';
import 'package:belajarflutter2/pages/page2.dart';
import 'package:flutter/material.dart';
// import 'page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage(),
        '/subhome': (context) => MenuOne(),
      },
      home: HomePage(),
    );
  }
}
