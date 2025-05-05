import 'package:flutter/material.dart';
import 'widgets/navbar.dart';
import 'widgets/bottom_navbar.dart';

class MenuOne extends StatelessWidget {
  const MenuOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 36, 36, 36),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200), // tinggi app bar
          child: Navbar(tujuan: MenuOne()),
        ),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}
