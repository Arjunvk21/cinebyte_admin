import 'dart:js';

import 'package:cinebyte_admin_webapp/customadminattribute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class admin_feedback extends StatelessWidget {
  const admin_feedback({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.9;
    double height = MediaQuery.of(context).size.height * 0.7;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    color: Color(0xff080706),
                    width: width,
                    height: 120,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, bottom: 20),
                                child: CircleAvatar(
                                  radius: 28,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundColor: const Color.fromARGB(
                                        255, 118, 117, 117),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Text(
                                  'Admin',
                                  style: GoogleFonts.fugazOne(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                width: 600,
                              ),
                              SizedBox(
                                width: 250,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: Container(
                                    color: Color(0xff303133),
                                    height: 40,
                                    child: Center(
                                      child: TextFormField(
                                        style: GoogleFonts.fugazOne(
                                            color: Color(0xffFFC28C),
                                            fontSize: 15),
                                        decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.search,
                                              color: Colors.grey,
                                            ),
                                            hintText: 'Search',
                                            hintStyle: GoogleFonts.fugazOne(
                                              color: Colors.grey,
                                            ),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(1))),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Container(
                                  height: 38,
                                  width: 60,
                                  color: Color(0xffFFC28C),
                                  child: Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              TextButton.icon(
                                  onPressed: () {},
                                  label: Text(
                                    'Logout',
                                    style: GoogleFonts.fugazOne(
                                        color: Colors.white),
                                  ),
                                  icon: Icon(
                                    Icons.logout,
                                    color: Color(0xffFFC28C),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Container(
                        width: 70,
                        height: height,
                        color: Color(0xff080706),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 50,
                              width: 70,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: textcolor,
                                  ),
                                  Text(
                                    'Home',
                                    style: GoogleFonts.fugazOne(
                                        fontSize: 12, color: textcolor),
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 50,
                              width: 70,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Menu',
                                    style: GoogleFonts.fugazOne(
                                        fontSize: 12, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 50,
                              width: 70,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.calendar_month_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Schedules',
                                    style: GoogleFonts.fugazOne(
                                        fontSize: 12, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 50,
                              width: 70,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.settings,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Settings',
                                    style: GoogleFonts.fugazOne(
                                        fontSize: 12, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 30, left: 200, top: 90),
                        child: GestureDetector(
                          // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ,)),
                          child: Container(
                            height: 38,
                            width: 100,
                            // color: Color(0xffFFC28C),
                            child: Center(
                                child: Text(
                              'Profile',
                              style: GoogleFonts.fugazOne(color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 30, left: 20, top: 90),
                        child: GestureDetector(
                          // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ,)),
                          child: Container(
                            height: 38,
                            width: 100,
                            color: Color(0xffFFC28C),
                            child: Center(
                                child: Text(
                              'Feedback',
                              style: GoogleFonts.fugazOne(color: Colors.black),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, top: 140),
                    child: Container(
                      height: 450,
                      width: 1300,
                      // child: Image.network('src'),
                      color: Color(0xff36393F),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'User 1',
                                  style: GoogleFonts.fugazOne(color: textcolor),
                                ),
                                Text(
                                  '''It is a long established fact that a reader will be distracted \nby the readable content of a page
 when looking at its layout''',
                                  style:
                                      GoogleFonts.fugazOne(color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 30, left: 20, top: 90),
                                  child: GestureDetector(
                                    onTap: () => _showDialog(context),
                                    child: Container(
                                      height: 38,
                                      width: 100,
                                      color: Color(0xffFFC28C),
                                      child: Center(
                                          child: Text(
                                        'Reply',
                                        style: GoogleFonts.fugazOne(
                                            color: Colors.black),
                                      )),
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 2,
                                  color: Colors.red,
                                )
                              ],
                            ),
                          );
                        },
                        itemCount: 4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialogWithTextField(),
    );
  }
}

class AlertDialogWithTextField extends StatefulWidget {
  @override
  _AlertDialogWithTextFieldState createState() =>
      _AlertDialogWithTextFieldState();
}

class _AlertDialogWithTextFieldState extends State<AlertDialogWithTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      height: 400,
      width: 1200,
      color: Color(0xff36393F),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'User 1',
                  style: GoogleFonts.fugazOne(color: textcolor),
                ),
                Text(
                  '''It is a long established fact that a reader will be distracted \nby the readable content of a page
             when looking at its layout''',
                  style: GoogleFonts.fugazOne(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 1000,
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: textcolor)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'Reply..',
                  hintStyle: GoogleFonts.fugazOne(color: Colors.grey)),
              controller: _controller,
              keyboardType: TextInputType.multiline,
              minLines: 1, // This sets the initial number of lines
              maxLines: 6,
              style: GoogleFonts.fugazOne(color: textcolor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 20, top: 90),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                height: 38,
                width: 100,
                color: Color(0xffFFC28C),
                child: Center(
                    child: Text(
                  'Send',
                  style: GoogleFonts.fugazOne(color: Colors.black),
                )),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
