import 'package:flutter/material.dart';

class MenuOne extends StatelessWidget {
  const MenuOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 36, 36, 36),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Row(
            children: [
              Icon(Icons.account_tree_rounded, size: 30, color: Colors.white),
              SizedBox(width: 10),
              Text(
                "Get Skill",
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.blue,
          destinations: [
            NavigationDestination(
              icon: IconButton(onPressed: () {}, icon: Icon(Icons.bedtime)),
              label: "Sleeping",
            ),
            NavigationDestination(
              icon: Icon(Icons.home, size: 30, color: Colors.white),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.settings, size: 30, color: Colors.white),
              label: "settings",
            ),
          ],
        ),
      )
    );
  }
}
