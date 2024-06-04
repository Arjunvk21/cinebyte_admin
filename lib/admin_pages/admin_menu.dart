import 'package:cinebyte_admin_webapp/admin_homepage.dart';
import 'package:cinebyte_admin_webapp/admin_pages/admin_rentalservice.dart';
import 'package:cinebyte_admin_webapp/admin_schedules_page.dart';
import 'package:cinebyte_admin_webapp/admin_settings_page.dart';
import 'package:cinebyte_admin_webapp/customadminattribute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class admin_menu extends StatefulWidget {
  const admin_menu({super.key});

  @override
  State<admin_menu> createState() => _admin_menuState();
}

class _admin_menuState extends State<admin_menu> {
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
                    color: const Color(0xff080706),
                    width: width,
                    height: 120,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsets.only(left: 30, bottom: 20),
                                child: CircleAvatar(
                                  radius: 28,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Color.fromARGB(
                                        255, 118, 117, 117),
                                  ),
                                ),
                              ),
                              const SizedBox(
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
                              const SizedBox(
                                width: 600,
                              ),
                              SizedBox(
                                width: 250,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: Container(
                                    color: const Color(0xff303133),
                                    height: 40,
                                    child: Center(
                                      child: TextFormField(
                                        style: GoogleFonts.fugazOne(
                                            color: const Color(0xffFFC28C),
                                            fontSize: 15),
                                        decoration: InputDecoration(
                                            prefixIcon: const Icon(
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
                              const SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Container(
                                  height: 38,
                                  width: 60,
                                  color: const Color(0xffFFC28C),
                                  child: const Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 150,
                              ),
                              TextButton.icon(
                                  onPressed: () {},
                                  label: Text(
                                    'Logout',
                                    style: GoogleFonts.fugazOne(
                                        color: Colors.white),
                                  ),
                                  icon: const Icon(
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
                        color: const Color(0xff080706),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          const admin_homepage(),
                                    )),
                              child: SizedBox(
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
                            ),
                            const Divider(
                              thickness: 1,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 50,
                              width: 70,
                              child: GestureDetector(
                                onTap: () => Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          const admin_rentalservice(),
                                    )),
                                child: Column(
                                  children: [
                                    const Icon(
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
                            ),
                            const Divider(
                              thickness: 1,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 50,
                              width: 70,
                              child: GestureDetector(
                                onTap: () => Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          const schedules_page(),
                                    )),
                                child: Column(
                                  children: [
                                    const Icon(
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
                            ),
                            const Divider(
                              thickness: 1,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 50,
                              width: 70,
                              child: GestureDetector(
                                onTap: () => Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          const settings_page(),
                                    )),
                                child: Column(
                                  children: [
                                    const Icon(
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
                            ),
                            const Divider(
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
                          child: SizedBox(
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
                            color: const Color(0xffFFC28C),
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
                            color: const Color(0xffFFC28C),
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
                            color: const Color(0xffFFC28C),
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
                            color: const Color(0xffFFC28C),
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
                      color: const Color(0xff36393F),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Center(
                                    child: GestureDetector(
                                      onTap: () => _showscriptDialog(context),
                                      child: Container(
                                        margin: const EdgeInsets.only(top: 40),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: const Color.fromARGB(
                                              255, 234, 210, 178),
                                        ),
                                        width: 800,
                                        height: 180,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding:
                                                      EdgeInsets.only(
                                                          left: 20, top: 20),
                                                  child: CircleAvatar(
                                                    backgroundImage: NetworkImage(
                                                        'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg'),
                                                    radius: 25,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20, left: 10),
                                                  child: Text(
                                                    'Alex D Paul',
                                                    style: GoogleFonts.acme(
                                                      color: const Color(0xff2D3037),
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 500),
                                                  child: Text(
                                                    '10/11/2023',
                                                    style: GoogleFonts.acme(
                                                        color:
                                                            const Color(0xff2D3037)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(),
                                              child: Divider(
                                                thickness: 1,
                                                color: Color(0xff36393F),
                                              ),
                                            ),
                                            Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Center(
                                                    child: Text(
                                                      '''       A young scientist developing a revolutionary energy source must choose  between personal gain and saving the planet. ''',
                                                      style:
                                                          GoogleFonts.lateef(),
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Genre : Sci-Fi , Survival Thriller ',
                                                      style: GoogleFonts.acme(),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
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

  void _showscriptDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialogScriptWithTextField(),
    );
  }
}

class AlertDialogScriptWithTextField extends StatefulWidget {
  @override
  _AlertDialogScriptWithTextFieldState createState() =>
      _AlertDialogScriptWithTextFieldState();
}

class _AlertDialogScriptWithTextFieldState extends State<AlertDialogScriptWithTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      height: 400,
      width: 1200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff36393F),
      ),
      child: Container(
        // width: 100,
        // height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffEBC9A9),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 410),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg'),
                      radius: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: GestureDetector(
                      // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ,)),
                      child: Container(
                        height: 38,
                        width: 100,
                        color: const Color(0xff2D3037),
                        child: Center(
                            child: Text(
                          'Delete',
                          style: GoogleFonts.fugazOne(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                'Alex D Paul',
                style: GoogleFonts.acme(
                  color: const Color(0xff2D3037),
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Center(
                child: Text(
                  '10/11/2023',
                  style: GoogleFonts.acme(color: const Color(0xff2D3037)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(),
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
                      '''       A young scientist developing a revolutionary energy source must choose  between personal gain and saving the planet. ''',
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
                      'Genre : Sci-Fi , Survival Thriller ',
                      style: GoogleFonts.acme(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Download the synopsis ',
              style: GoogleFonts.acme(fontSize: 20),
            ),
            const Icon(
              Icons.cloud_download,
              size: 90,
              color: Color(0xff2D3037),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff2D3037)),
                          minimumSize: MaterialStatePropertyAll(
                            Size(200, 40),
                          )),
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => scripts_approve_or_reject_page()));
                      },
                      child: Text(
                        "Download",
                        style: GoogleFonts.fugazOne(
                            color: Colors.white, fontSize: 14),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
