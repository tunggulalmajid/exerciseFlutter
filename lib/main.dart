import 'package:flutter/material.dart';
import 'widgets/button_menu.dart';
import 'page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: PageView(
                  children: [
                    Card(
                      margin: EdgeInsets.all(5),
                      child: Image.network(
                        'https://picsum.photos/id/3/200/300',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(5),
                      child: Image.network(
                        'https://picsum.photos/id/2/200/300',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(5),
                      child: Image.network(
                        'https://picsum.photos/id/1/200/300',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Menu",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(10),
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                shrinkWrap: true,
                crossAxisCount: 3,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenuOne()),
                      );
                    },
                    child: ButtonMenu(
                      text: "Menu 1",
                      warna: Colors.amber,
                      panjang: 150,
                    ),
                  ),
                  ButtonMenu(text: "Menu 1", warna: Colors.amber, panjang: 150),
                  ButtonMenu(text: "Menu 1", warna: Colors.amber, panjang: 150),
                  ButtonMenu(text: "Menu 1", warna: Colors.amber, panjang: 150),
                  ButtonMenu(text: "Menu 1", warna: Colors.amber, panjang: 150),
                  ButtonMenu(text: "Menu 1", warna: Colors.amber, panjang: 150),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
