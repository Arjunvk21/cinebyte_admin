import 'dart:async';

import 'package:cinebyte_admin_webapp/admin_pages/admin_getstarted.dart';
import 'package:cinebyte_admin_webapp/customadminattribute.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class admin_firstpage extends StatefulWidget {
  const admin_firstpage({super.key});

  @override
  State<admin_firstpage> createState() => _admin_firstpageState();
}

class _admin_firstpageState extends State<admin_firstpage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5 ), () { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => admin_getstarted(),));});
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(right: 200),
          //   child: Container(
          //     height: 350,
          //     width: 350,
          //     decoration: ShapeDecoration(
          //         color: Color(0xff36393F),
          //         shape: CircleBorder(
          //           eccentricity: 0,
          //         )),
          //   ),
          // )
          Center(
            child: Text(
              "CineByte Network",
              style: GoogleFonts.fugazOne(
                  color:textcolor, fontSize: 40),
            ),
          ),
          Center(
            child: Text("I would rather die of passion than boredom",
                style: GoogleFonts.fugazOne(
                  fontSize: 30,
                  color:textcolor,
                )),
          )
        ],
      ),
    );
  }
}
