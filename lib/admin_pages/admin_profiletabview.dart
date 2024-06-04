import 'package:cinebyte_admin_webapp/customadminattribute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class admin_profile extends StatelessWidget {
  const admin_profile({super.key});

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
                            SizedBox(
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
                          child: Container(
                            height: 38,
                            width: 100,
                            color: const Color(0xffFFC28C),
                            child: Center(
                                child: Text(
                              'Profile',
                              style: GoogleFonts.fugazOne(),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 30, left: 20, top: 90),
                        child: GestureDetector(
                          // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ,)),
                          child: SizedBox(
                            height: 38,
                            width: 100,
                            // color: Color(0xffFFC28C),
                            child: Center(
                                child: Text(
                              'Feedback',
                              style: GoogleFonts.fugazOne(color:Colors.white),
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
                      child: Center(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Stack(children: [
                                const CircleAvatar(
                                  radius: 65,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 60,
                                    backgroundImage: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPzVgo3yqoEmk3EEo2WPIDK7W5n4Mk_vinDYtsDKmfGg&s'),
                                  ),
                                ),
                                Positioned(
                                    top: 90,
                                    right: 15,
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: textcolor),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Center(
                                            child: Icon(
                                              Icons.photo_camera,
                                              color: Color(0xff2D3037),
                                            ),
                                          )),
                                    ))
                              ]),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    'Change profile picture',
                                    style: GoogleFonts.fugazOne(
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Change password',
                              style: GoogleFonts.fugazOne(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 400,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Colors.grey,
                                    ),
                                    border: UnderlineInputBorder()),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 400,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Colors.grey,
                                    ),
                                    border: UnderlineInputBorder()),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ,)),
                              child: Padding(
                                padding: const EdgeInsets.only(),
                                child: Container(
                                  height: 38,
                                  width: 100,
                                  color: const Color(0xffFFC28C),
                                  child: Center(
                                      child: Text(
                                    'Submit',
                                    style: GoogleFonts.fugazOne(),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
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
