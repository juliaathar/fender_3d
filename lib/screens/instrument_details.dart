import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:music_store/screens/home.dart';

class Instrument extends StatefulWidget {
  final String? imagePath;
  final String? instrumentName;

  const Instrument({super.key, this.imagePath, this.instrumentName});

  @override
  State<Instrument> createState() => _InstrumentState();
}

class _InstrumentState extends State<Instrument> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(onPressed:() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            }, icon: Icon(Symbols.arrow_back_ios, color: Color(0xff7E7E7E)));
          },
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 217,
                height: 465,
                child: ModelViewer(
                  src: widget.imagePath ?? "",
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                widget.instrumentName ?? "",
                style: GoogleFonts.josefinSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                ),
              ),
              Text(
                "\$800",
                style: GoogleFonts.josefinSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                width: 320,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.josefinSans(
                      fontSize: 14,
                    color: Color(0xff7E7E7E)
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 320,
                child: Row(
                  children: [
                    Icon(
                      Symbols.grade,
                      color: Color(0xff7E7E7E)
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Icon(
                        Symbols.share,
                        color: Color(0xff7E7E7E)
                    ),
                    SizedBox(
                      width: 116,
                    ),
                    Container(
                      width: 140,
                      height: 43,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffDA352A),
                        ),
                        child: Text(
                          "BUY",
                          style: GoogleFonts.karla(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xffFDFDFD)
                          ),
                        ),
                      ),
                    )
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
