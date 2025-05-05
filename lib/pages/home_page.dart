import 'package:belajarflutter2/pages/page2.dart';
import 'package:belajarflutter2/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/button_menu.dart';
import '../widgets/navbar.dart';
import '../widgets/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> buttonAja = [
      {"tittle": "SubHome", 'route': HomePage()},
      {"tittle": "Makna", 'route': MenuOne()},
      {"tittle": "Rabes", 'route': HomePage()},
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 36, 36, 36),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Navbar(tujuan: HomePage()),
        ),
        bottomNavigationBar: BottomNav(),

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
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              GridView.count(
                childAspectRatio: 1.5,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(10),
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                shrinkWrap: true,
                crossAxisCount: 3,
                children:
                    buttonAja.map((button) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => button['route'],
                            ),
                          );
                        },
                        child: ButtonMenu(
                          text: '${button['tittle']}',
                          warna: secondaryColor,
                          panjang: 30,
                        ),
                      );
                    }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
