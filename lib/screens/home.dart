import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:music_store/screens/instrument_details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      appBar: AppBar(
        automaticallyImplyLeading: false, // definido como false para evitar a seta de volta automática que vem por conta do navigator
        title: Padding(
          padding: EdgeInsets.fromLTRB(120, 0, 0, 0),
          child: Image.asset("assets/logo.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(onPressed: (){}, icon: Icon(
              Symbols.logout,
              color: Color(0xff7E7E7E),
            )),
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 81,
              ),
              Container(
                width: 350,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Search...",
                    labelStyle: GoogleFonts.josefinSans(
                      textStyle: TextStyle(
                        color: Color(0xff7E7E7E)
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: const BorderSide(
                        width: 2
                      )
                    ),
                    prefixIcon: Icon(
                      Symbols.search,
                      color: Color(0xff7E7E7E),
                    )
                  ),
                ),
              ),
              SizedBox(
                height: 51,
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                alignment: Alignment.centerLeft,
                child: Text(
                  "What's new",
                  style: GoogleFonts.karla(
                    color: Color(0xffDA352A),
                    fontWeight: FontWeight.w900,
                    fontSize: 26
                  ),
                ),
              ),
              SizedBox(
                height: 58,
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                height: 360,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Instrument(imagePath: "assets/guitar_3d.glb", instrumentName: "Player Plus Stratocaster®",)));
                            },
                            child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xffFDFDFD),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff150908).withOpacity(0.10),
                                    spreadRadius: 6,
                                    blurRadius: 10,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Image.asset("assets/guitar.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Container(
                          width: 124,
                          child: Text(
                            "Player Plus Stratocaster®",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.josefinSans(
                              textStyle: TextStyle(
                                color: Color(0xff150908),
                              )
                            )
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
