import 'package:cinebyte_admin_webapp/admin_homepage.dart';
import 'package:cinebyte_admin_webapp/admin_pages/admin_rentalservice.dart';
import 'package:cinebyte_admin_webapp/admin_settings_page.dart';
import 'package:cinebyte_admin_webapp/customadminattribute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class schedules_page extends StatefulWidget {
  const schedules_page({super.key});

  @override
  State<schedules_page> createState() => _schedules_pageState();
}

class _schedules_pageState extends State<schedules_page> {
  final List _scripts = ['script 1', 'script 2', 'script 3', 'script 4'];
  final List _shootings = ['shoot 1', 'shoot 2', 'shoot 3', 'shoot 4'];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.9;
    double height = MediaQuery.of(context).size.height * 0.7;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
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
                                      child:
                                          App_custom_tabbar(title: 'Scripts'),
                                    ),
                                    Tab(
                                      child:
                                          App_custom_tabbar(title: 'Shootings'),
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
                                  // onTap: () => _showscriptDialog(context),
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 20, left: 300, right: 300),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
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
                                              padding: EdgeInsets.only(
                                                  left: 20, top: 20),
                                              child: CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg'),
                                                radius: 25,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20, left: 10),
                                              child: Text(
                                                'Alex D Paul',
                                                style: GoogleFonts.acme(
                                                  color:
                                                      const Color(0xff2D3037),
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 400),
                                              child: Text(
                                                '10/11/2023',
                                                style: GoogleFonts.acme(
                                                    color: const Color(
                                                        0xff2D3037)),
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
                                                  style: GoogleFonts.lateef(),
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
                                );
                              },
                              itemCount: 10,
                            ),
                            ListView.builder(
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Center(
                                      child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 300, right: 300, top: 20),
                                    height: 250,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      // color: Color.fromARGB(255, 234, 210, 178),
                                    ),
                                    clipBehavior: Clip.hardEdge,
                                    child: Card(
                                      child: Image.network(
                                        'https://assets-in.bmscdn.com/discovery-catalog/events/et00038685-nrtlwupzxk-landscape.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                      elevation: 10,
                                    ),
                                    width: width,
                                  )),
                                );
                              },
                              itemCount: _shootings.length,
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
