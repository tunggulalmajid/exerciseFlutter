import 'package:belajarflutter2/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/navbar.dart';
import '../widgets/bottom_navbar.dart';

class MenuOne extends StatefulWidget {
  const MenuOne({super.key});

  @override
  _MenuOneState createState() => _MenuOneState();
}

class _MenuOneState extends State<MenuOne> {
  TextEditingController _controlInput1 = TextEditingController();
  TextEditingController _controlInput2 = TextEditingController();
  // final int inputUser;
  // final int inputPassword;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: primaryColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200), // tinggi app bar
          child: Navbar(tujuan: MenuOne()),
        ),
        bottomNavigationBar: BottomNav(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: secondaryColor,
                  border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromRGBO(
                        0,
                        0,
                        0,
                        0.3,
                      ), // warna bayangan`
                      spreadRadius: 2, // seberapa luas bayangan
                      blurRadius: 5, // seberapa blur bayangan
                      offset: Offset(0, 10), // posisi bayangan (x, y)
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sebuah Judul",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),

                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Masukkan Berat Badan:',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          TextField(
                            controller: _controlInput1,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: false,
                              border: UnderlineInputBorder(),
                              hintText: 'Ketik sesuatu...',
                              hintStyle: GoogleFonts.poppins(
                                color: Colors.white54,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Masukkan Target Berat Badan:',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          TextField(
                            controller: _controlInput2,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: false,
                              border: UnderlineInputBorder(),
                              hintText: 'Ketik sesuatu...',
                              hintStyle: GoogleFonts.poppins(
                                color: Colors.white54,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 110,
                  height: 40,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.white, width: 1),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromRGBO(
                          0,
                          0,
                          0,
                          0.3,
                        ), // warna bayangan`
                        spreadRadius: 2, // seberapa luas bayangan
                        blurRadius: 5, // seberapa blur bayangan
                        offset: Offset(0, 10), // posisi bayangan (x, y)
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Kalkulasi",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(15),
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.white, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromRGBO(
                        0,
                        0,
                        0,
                        0.3,
                      ), // warna bayangan`
                      spreadRadius: 2, // seberapa luas bayangan
                      blurRadius: 5, // seberapa blur bayangan
                      offset: Offset(0, 10), // posisi bayangan (x, y)
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Hasil :",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "0",
                          style: GoogleFonts.poppins(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Keterangan : ",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "sebuah sebuah sbeuah sebuah kasih commend bang",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
