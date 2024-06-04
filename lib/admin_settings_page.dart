import 'package:cinebyte_admin_webapp/admin_homepage.dart';
import 'package:cinebyte_admin_webapp/admin_pages/admin_rentalservice.dart';
import 'package:cinebyte_admin_webapp/admin_schedules_page.dart';
import 'package:cinebyte_admin_webapp/customadminattribute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class settings_page extends StatefulWidget {
  const settings_page({super.key});

  @override
  State<settings_page> createState() => _settings_pageState();
}

class _settings_pageState extends State<settings_page> {
  final List _userslist = ['userr 1', 'userr 1', 'userr 1', 'userr 1'];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.9;
    double height = MediaQuery.of(context).size.height * 0.7;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: Column(
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
                                        backgroundColor:
                                            Color.fromARGB(255, 118, 117, 117),
                                            backgroundImage: AssetImage('images/admin.jpg'),
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
                                      padding:
                                          const EdgeInsets.only(bottom: 30),
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
                                                        BorderRadius.circular(
                                                            1))),
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
                                  child: GestureDetector(
                                    onTap: () => Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          const admin_homepage(),
                                    )),
                                    child: Column(
                                      children: [
                                        const Icon(
                                          Icons.home,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'Home',
                                          style: GoogleFonts.fugazOne(
                                              fontSize: 12,
                                              color: Colors.white),
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
                                              fontSize: 12,
                                              color: Colors.white),
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
                                              fontSize: 12,
                                              color: Colors.white),
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
                                              fontSize: 12,
                                              color: Colors.white),
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
                      const Padding(
                        padding: EdgeInsets.only(top: 70, left: 70, right: 75),
                        child: Row(
                          children: [
                            Expanded(
                              child: TabBar(
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  dividerColor:
                                      Color.fromARGB(0, 255, 255, 255),
                                  indicator: BoxDecoration(
                                    color: Color(0xffFFC28C),
                                  ),
                                  labelColor: Color.fromARGB(255, 0, 0, 0),
                                  unselectedLabelColor:
                                      Color.fromARGB(255, 255, 253, 253),
                                  tabs: [
                                    Tab(
                                      child: App_custom_tabbar(title: 'Users'),
                                    ),
                                    Tab(
                                      child:
                                          App_custom_tabbar(title: 'Profile'),
                                    ),
                                    Tab(
                                      child: App_custom_tabbar(
                                          title: 'Help Center'),
                                    ),
                                    // Tab(
                                    //   child: App_custom_tabbar(
                                    //       title: 'Casting calls'),
                                    // ),
                                    // Tab(
                                    //   child: App_custom_tabbar(
                                    //       title: 'Rental services',),
                                    // ),
                                    // Tab(
                                    //   child: App_custom_tabbar(title: 'Courses'),
                                    // ),
                                    // child: Padding(
                                    //     padding: const EdgeInsets.only(),
                                    //     child: GestureDetector(
                                    //       // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ,)),
                                    //       child: Container(

                                    //         height: 38,
                                    //         width: 100,
                                    //         color: Color(0xffFFC28C),
                                    //         child: Center(
                                    //             child: Text(
                                    //           'Profile',
                                    //           style: GoogleFonts.fugazOne(
                                    //               color: Colors.black),
                                    //         )),
                                    //       ),
                                    //     ),
                                    //   ),
                                  ]),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, top: 140),
                        child: Container(
                          height: 400,
                          width: 1300,
                          // child: Image.network('src'),
                          color: const Color(0xff36393F),
                          child: TabBarView(children: [
                            ListView.builder(
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => _showuserDialog(context),
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 40, left: 400, right: 400),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color.fromARGB(
                                          255, 234, 210, 178),
                                    ),
                                    width: width,
                                    height: 150,
                                    child: Center(
                                      child: Row(
                                        children: [
                                          const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 30),
                                              child: CircleAvatar(
                                                radius: 45,
                                                backgroundImage: NetworkImage(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPzVgo3yqoEmk3EEo2WPIDK7W5n4Mk_vinDYtsDKmfGg&s'),
                                              )),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                child: Text(
                                                  'Prithviraj productions',
                                                  style: GoogleFonts.acme(
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: Text(
                                                  'prithvirajproduction@gmail.com',
                                                  style: GoogleFonts.acme(
                                                      fontSize: 12),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 70, bottom: 10),
                                                child: Text(
                                                  '+91 9454737782',
                                                  style: GoogleFonts.acme(
                                                      fontSize: 12),
                                                ),
                                              )
                                            ],
                                          ),
                                          // Padding(
                                          //   padding: const EdgeInsets.only(left: 20, top: 70),
                                          //   child: IconButton(
                                          //       onPressed: () {}, icon: Icon(Icons.add_card_rounded)),
                                          // )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              itemCount: _userslist.length,
                            ),
                            Builder(builder: (context) {
                              return ListView(
                                children: [
                                  Column(
                                    children: [
                                      Stack(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 50),
                                            child: CircleAvatar(
                                              radius: 65,
                                              backgroundColor: Colors.white,
                                              child: CircleAvatar(
                                                radius: 60,
                                                backgroundImage: AssetImage('images/admin.jpg'),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: 140,
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
                                                        color:
                                                            Color(0xff2D3037),
                                                      ),
                                                    )),
                                              ))
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Text(
                                              'Change profile picture',
                                              style: GoogleFonts.fugazOne(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 60,
                                      ),
                                      const Divider(
                                        thickness: 1,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(
                                        height: 60,
                                      ),
                                      Text(
                                        'Change password',
                                        style: GoogleFonts.fugazOne(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 60,
                                      ),
                                      SizedBox(
                                        width: 400,
                                        child: TextFormField(
                                          style: GoogleFonts.fugazOne(
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255)),
                                          decoration: const InputDecoration(
                                              hintText:
                                                  'Enter your old password',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
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
                                          style: GoogleFonts.fugazOne(
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255)),
                                          decoration: const InputDecoration(
                                              hintText:
                                                  'Enter your new password',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              prefixIcon: Icon(
                                                Icons.lock,
                                                color: Colors.grey,
                                              ),
                                              border: UnderlineInputBorder()),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
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
                                ],
                              );
                            }),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: ListView(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      Text(
                                        'Hello, how can we help you?',
                                        style: GoogleFonts.fugazOne(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 350, right: 350, top: 10),
                                        child: TextFormField(
                                          style: const TextStyle(
                                              color: Colors.white),
                                          decoration: InputDecoration(
                                              prefixIcon: const Icon(
                                                  Icons.search,
                                                  color: Colors.white),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(),
                                              hintText:
                                                  'Search our knowledge base',
                                              hintStyle: GoogleFonts.fugazOne(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: const BorderSide(),
                                              )),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      Text(
                                        'Or choose a category to find what you’re looking for..',
                                        style: GoogleFonts.fugazOne(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      ElevatedButton.icon(
                                          style: const ButtonStyle(
                                              minimumSize:
                                                  MaterialStatePropertyAll(
                                                Size(600, 60),
                                              ),
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color.fromARGB(
                                                          255, 240, 207, 166))),
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.directions,
                                            color:
                                                Color.fromARGB(255, 46, 53, 62),
                                          ),
                                          label: Text(
                                            'Getting started',
                                            style: GoogleFonts.fugazOne(
                                                color: const Color.fromARGB(
                                                    255, 46, 53, 62)),
                                          )),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      ElevatedButton.icon(
                                          style: const ButtonStyle(
                                              minimumSize:
                                                  MaterialStatePropertyAll(
                                                Size(600, 60),
                                              ),
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color.fromARGB(
                                                          255, 240, 207, 166))),
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.group,
                                            color:
                                                Color.fromARGB(255, 46, 53, 62),
                                          ),
                                          label: Text(
                                            'Community',
                                            style: GoogleFonts.fugazOne(
                                                color: const Color.fromARGB(
                                                    255, 46, 53, 62)),
                                          )),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      ElevatedButton.icon(
                                          style: const ButtonStyle(
                                              minimumSize:
                                                  MaterialStatePropertyAll(
                                                Size(600, 60),
                                              ),
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color.fromARGB(
                                                          255, 240, 207, 166))),
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.feedback,
                                            color:
                                                Color.fromARGB(255, 46, 53, 62),
                                          ),
                                          label: Text(
                                            'FAQ',
                                            style: GoogleFonts.fugazOne(
                                                color: const Color.fromARGB(
                                                    255, 46, 53, 62)),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_showuserDialog(BuildContext context) {
  showDialog(context: context, builder: (context) => const Alertdialoguser());
}

class Alertdialoguser extends StatelessWidget {
  const Alertdialoguser({super.key});

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
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Padding(
                padding: EdgeInsets.only(),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPzVgo3yqoEmk3EEo2WPIDK7W5n4Mk_vinDYtsDKmfGg&s'),
                  radius: 50,
                ), // Replace with your desired icon
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                'Prithviraj productions',
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
                  'prithvirajproduction@gmail.com',
                  style: GoogleFonts.acme(color: const Color(0xff2D3037)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Center(
                child: Text(
                  '+91 952197552',
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
                      'Account created date : 10/11/2024',
                      style: GoogleFonts.lateef(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 17,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   'Groups  : 275 Members',
                    //   style: GoogleFonts.acme(fontSize: 20),
                    // ),
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
                    onTap: () {},
                    child: Container(
                      height: 38,
                      width: 160,
                      color: const Color(0xff2D3037),
                      child: Center(
                          child: Text(
                        'View user profile',
                        style: GoogleFonts.fugazOne(color: Colors.white),
                      )),
                    ),
                  ),
                ),
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
                      width: 160,
                      color: const Color(0xff2D3037),
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
                      width: 160,
                      color: const Color(0xff2D3037),
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
