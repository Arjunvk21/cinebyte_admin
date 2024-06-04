import 'package:cinebyte_admin_webapp/customadminattribute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class admin_networking extends StatefulWidget {
  const admin_networking({super.key});

  @override
  State<admin_networking> createState() => _admin_networkingState();
}

class _admin_networkingState extends State<admin_networking> {
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
                              'Scripts',
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
                              'Networking',
                              style: GoogleFonts.fugazOne(color: Colors.black),
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
                              'Casting calls',
                              style: GoogleFonts.fugazOne(color: Colors.black),
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
                              'Rental Services',
                              style: GoogleFonts.fugazOne(color: Colors.black),
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
                              'Courses',
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
                          return Padding(
                              padding: const EdgeInsets.all(10),
                              child: GestureDetector(
                                onTap: () => _shownetworkingDialog(context),
                                child: Container(
                                  margin:
                                      EdgeInsets.only(left: 300, right: 300),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 234, 210, 178),
                                      borderRadius: BorderRadius.circular(40)),
                                  height: 70,
                                  child: Center(
                                      child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                      radius: 25,
                                    ), // Replace with your desired icon
                                    title: Text('Group 1',
                                        style: GoogleFonts.acme(fontSize: 20)),
                                  )),
                                ),
                              ));
                        },
                        itemCount: 10,
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
}

void _shownetworkingDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialognetworkingWithTextField(),
  );
}

class AlertDialognetworkingWithTextField extends StatefulWidget {
  @override
  _AlertDialognetworkingWithTextFieldState createState() =>
      _AlertDialognetworkingWithTextFieldState();
}

class _AlertDialognetworkingWithTextFieldState extends State<AlertDialognetworkingWithTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      height: 400,
      width: 1200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff36393F),
      ),
      child: Container(
        // width: 100,
        // height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffEBC9A9),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.only(),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  radius: 25,
                ), // Replace with your desired icon
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                'Group 1',
                style: GoogleFonts.acme(
                  color: Color(0xff2D3037),
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Center(
                child: Text(
                  '10/11/2023',
                  style: GoogleFonts.acme(color: Color(0xff2D3037)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Divider(
                thickness: 1,
                color: Color(0xff36393F),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Created by Rayyan K',
                      style: GoogleFonts.lateef(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 17,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Group  : 275 Members',
                      style: GoogleFonts.acme(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            'Are you sure?',
                            style: GoogleFonts.fugazOne(color: Colors.black),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'Yes',
                                  style:
                                      GoogleFonts.fugazOne(color: Colors.black),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'No',
                                  style:
                                      GoogleFonts.fugazOne(color: Colors.black),
                                ))
                          ],
                        ),
                      );
                    },
                    child: Container(
                      height: 38,
                      width: 100,
                      color: Color(0xff2D3037),
                      child: Center(
                          child: Text(
                        'Delete',
                        style: GoogleFonts.fugazOne(color: Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      height: 38,
                      width: 100,
                      color: Color(0xff2D3037),
                      child: Center(
                          child: Text(
                        'Close',
                        style: GoogleFonts.fugazOne(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
