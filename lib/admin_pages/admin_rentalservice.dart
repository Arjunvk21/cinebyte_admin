// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api

import 'dart:html';

import 'package:cinebyte_admin_webapp/admin_homepage.dart';
import 'package:cinebyte_admin_webapp/admin_schedules_page.dart';
import 'package:cinebyte_admin_webapp/admin_settings_page.dart';
import 'package:cinebyte_admin_webapp/customadminattribute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class admin_rentalservice extends StatefulWidget {
  const admin_rentalservice({super.key});

  @override
  State<admin_rentalservice> createState() => _admin_rentalserviceState();
}

// ignore: camel_case_types
class _admin_rentalserviceState extends State<admin_rentalservice>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.9;
    double height = MediaQuery.of(context).size.height * 0.7;
    String? selectedValue;
    late final TabController tabController = TabController(
      length: 6,
      vsync: this,
    );
    return Scaffold(
      body: DefaultTabController(
        length: 5,
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
                                      backgroundImage:
                                          AssetImage('images/admin.jpg'),
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
                            )),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 70, left: 70, right: 75),
                      child: Row(
                        children: [
                          Expanded(
                            child: TabBar(
                                controller: tabController,
                                indicatorSize: TabBarIndicatorSize.tab,
                                dividerColor:
                                    const Color.fromARGB(0, 255, 255, 255),
                                indicator: const BoxDecoration(
                                  color: Color(0xffFFC28C),
                                ),
                                labelColor: const Color.fromARGB(255, 0, 0, 0),
                                unselectedLabelColor:
                                    const Color.fromARGB(255, 255, 253, 253),
                                tabs: [
                                  const Scripttab(),
                                  const Networkingtab(),
                                  const Catingtab(),
                                  Tab(
                                    child: App_custom_tabbar(
                                      title: 'Rental services',
                                      dropdownButton:
                                          DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          value: selectedValue,
                                          dropdownColor: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          icon: const Icon(
                                            Icons.arrow_drop_down_outlined,
                                            color: Colors.black,
                                          ),
                                          items: [
                                            DropdownMenuItem(
                                              // onTap: () =>const Coursestab(),
                                              //where
                                              value: 'Add product',
                                              child: Text(
                                                'Add product',
                                                style: GoogleFonts.fugazOne(
                                                    color: const Color(
                                                        0xffFFC28C)),
                                              ),
                                            ),
                                            DropdownMenuItem(
                                              // onTap: () => ,
                                              //where

                                              value: 'Camera',
                                              child: Text(
                                                'Camera',
                                                style: GoogleFonts.fugazOne(
                                                    color: const Color(
                                                        0xffFFC28C)),
                                              ),
                                            ),
                                            DropdownMenuItem(
                                              value: 'Lights',
                                              child: Text(
                                                'Lights',
                                                style: GoogleFonts.fugazOne(
                                                    color: const Color(
                                                        0xffFFC28C)),
                                              ),
                                            ),
                                            DropdownMenuItem(
                                              value: 'Mics',
                                              child: Text(
                                                'Mics',
                                                style: GoogleFonts.fugazOne(
                                                    color: const Color(
                                                        0xffFFC28C)),
                                              ),
                                            ),
                                            DropdownMenuItem(
                                              value: 'Others',
                                              child: Text(
                                                'Others',
                                                style: GoogleFonts.fugazOne(
                                                    color: const Color(
                                                        0xffFFC28C)),
                                              ),
                                            )
                                          ],
                                          onChanged: (value) {
                                            setState(() {
                                              selectedValue = value;
                                              print(
                                                  '=================$selectedValue==============');
                                            });
                                            switch (value) {
                                              case 'Add product':
                                                tabController.animateTo(2);
                                                break;
                                              case 'Camera':
                                                tabController.animateTo(2);
                                                break;
                                              case 'Lights':
                                                tabController.animateTo(3);
                                                break;
                                              case 'Mics':
                                                tabController.animateTo(4);
                                                break;
                                              case 'Others':
                                                tabController.animateTo(5);
                                                break;
                                              default:
                                                null;
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: App_custom_tabbar(
                                      title: 'Courses',
                                      iconbutton: IconButton(
                                          onPressed: () =>
                                              _showaddcoursesDialog(context),
                                          icon: const Icon(Icons.add)),
                                    ),
                                  ),
                                ]),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80, top: 140),
                      child: Container(
                          height: 450,
                          width: 1300,
                          // child: Image.network('src'),
                          color: const Color(0xff36393F),
                          child:
                              TabBarView(controller: tabController, children: [
                            const Scriptview(),
                            const Networkingview(),
                            const Castingview(),
                            Rentalview(width: width),
                            Coursesview(width: width),
                            Addproduct(width: width),
                          ])),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Catingtab extends StatelessWidget {
  const Catingtab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Tab(
      child: App_custom_tabbar(title: 'Casting calls'),
    );
  }
}

class Networkingtab extends StatelessWidget {
  const Networkingtab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Tab(
      child: App_custom_tabbar(title: 'Networking'),
    );
  }
}

class Scripttab extends StatelessWidget {
  const Scripttab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Tab(
      child: App_custom_tabbar(title: 'Scripts'),
    );
  }
}

class Coursesview extends StatelessWidget {
  const Coursesview({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Center(
                    child: GestureDetector(
                  onTap: () => _showrcoursesDialog(context),
                  child: Container(
                    height: 200,
                    margin: const EdgeInsets.only(
                        left: 400, right: 400, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // color: Color.fromARGB(255, 234, 210, 178),
                    ),
                    clipBehavior: Clip.hardEdge,
                    width: width,
                    child: Image.asset(
                      'images/actingclass.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
              );
            },
            itemCount: 5,
          ),
        ],
      ),
    );
  }
}

class Addproduct extends StatefulWidget {
  const Addproduct({
    super.key,
    required this.width,
  });

  final double width;

  @override
  State<Addproduct> createState() => _AddproductState();
}

class _AddproductState extends State<Addproduct> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          // onTap: () => _showaddproductDialog(context),
          child: Container(
            margin: const EdgeInsets.only(
                left: 400, right: 400, top: 20, bottom: 20),
            width: widget.width,
            height: 200,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 229, 206, 177),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        '17000/Day',
                        style: GoogleFonts.fugazOne(
                          color: const Color.fromARGB(255, 46, 53, 62),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 290,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red[600],
                        ))
                  ],
                ),
                Image.asset(
                  'images/cam placeholder.png',
                  scale: 2,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Text(
                          'Add product',
                          style: GoogleFonts.fugazOne(
                            color: const Color.fromARGB(255, 46, 53, 62),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart)),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
      itemCount: 5,
    );
  }
}

class Rentalview extends StatelessWidget {
  const Rentalview({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => _showrentalDialog(context),
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 400, right: 400, top: 20, bottom: 20),
                  width: width,
                  height: 200,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 229, 206, 177),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              '17000/Day',
                              style: GoogleFonts.fugazOne(
                                color: const Color.fromARGB(255, 46, 53, 62),
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 290,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.red[600],
                              ))
                        ],
                      ),
                      Image.asset(
                        'images/cam.png',
                        scale: 2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 140),
                              child: Text(
                                'Sony Alpha 7',
                                style: GoogleFonts.fugazOne(
                                  color: const Color.fromARGB(255, 46, 53, 62),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.shopping_cart)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: 5,
          ),
          // const Positioned(
          //   child: nestedtab(),
          // ),
        ],
      ),
    );
  }
}

class Castingview extends StatelessWidget {
  const Castingview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _showcastingDialog(context),
            child: Container(
              margin: const EdgeInsets.only(left: 300, right: 300, top: 20),
              height: 250,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 229, 206, 177),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}

class Networkingview extends StatelessWidget {
  const Networkingview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _shownetworkingDialog(context),
            child: Container(
              margin: const EdgeInsets.only(left: 300, right: 300, top: 20),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 210, 178),
                  borderRadius: BorderRadius.circular(40)),
              height: 70,
              child: Center(
                  child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  radius: 25,
                ), // Replace with your desired icon
                title: Text('Group 1', style: GoogleFonts.acme(fontSize: 20)),
              )),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}

class Scriptview extends StatelessWidget {
  const Scriptview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => _showscriptDialog(context),
          child: Container(
            margin: const EdgeInsets.only(top: 20, left: 300, right: 300),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 234, 210, 178),
            ),
            width: 800,
            height: 180,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg'),
                        radius: 25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Text(
                        'Alex D Paul',
                        style: GoogleFonts.acme(
                          color: const Color(0xff2D3037),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 400),
                      child: Text(
                        '10/11/2023',
                        style: GoogleFonts.acme(color: const Color(0xff2D3037)),
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
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      mainAxisAlignment: MainAxisAlignment.start,
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
    );
  }
}

void _showscriptDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const AlertDialogScriptWithTextField(),
  );
}

class AlertDialogScriptWithTextField extends StatefulWidget {
  const AlertDialogScriptWithTextField({super.key});

  @override
  _AlertDialogScriptWithTextFieldState createState() =>
      _AlertDialogScriptWithTextFieldState();
}

class _AlertDialogScriptWithTextFieldState
    extends State<AlertDialogScriptWithTextField> {
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
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 570),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg'),
                      radius: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 300),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        height: 38,
                        width: 100,
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

void _shownetworkingDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const AlertDialognetworkingWithTextField(),
  );
}

class AlertDialognetworkingWithTextField extends StatefulWidget {
  const AlertDialognetworkingWithTextField({super.key});

  @override
  _AlertDialognetworkingWithTextFieldState createState() =>
      _AlertDialognetworkingWithTextFieldState();
}

class _AlertDialognetworkingWithTextFieldState
    extends State<AlertDialognetworkingWithTextField> {
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
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Padding(
                padding: EdgeInsets.only(),
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
                      width: 100,
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
  } //
}

// void _showDialog(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (context) => AlertDialogWithTextField(),
//   );
// }

// class AlertDialogWithTextField extends StatefulWidget {
//   @override
//   _AlertDialogWithTextFieldState createState() =>
//       _AlertDialogWithTextFieldState();
// }

// class _AlertDialogWithTextFieldState extends State<AlertDialogWithTextField> {
//   final TextEditingController _controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//         child: Container(
//       height: 400,
//       width: 1200,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: const Color(0xff36393F),
//       ),
//       child: Container(
//         // width: 100,
//         // height: 200,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color: const Color(0xffEBC9A9),
//         ),
//         child: Column(
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(top: 20),
//               child: Padding(
//                 padding: EdgeInsets.only(),
//                 child: CircleAvatar(
//                   backgroundImage: NetworkImage(
//                       'https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
//                   radius: 25,
//                 ), // Replace with your desired icon
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 top: 20,
//               ),
//               child: Text(
//                 'Group 1',
//                 style: GoogleFonts.acme(
//                   color: const Color(0xff2D3037),
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(),
//               child: Center(
//                 child: Text(
//                   '10/11/2023',
//                   style: GoogleFonts.acme(color: const Color(0xff2D3037)),
//                 ),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(),
//               child: Divider(
//                 thickness: 1,
//                 color: Color(0xff36393F),
//               ),
//             ),
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Center(
//                     child: Text(
//                       'Created by Rayyan K',
//                       style: GoogleFonts.lateef(fontSize: 20),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                   left: 17,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Group  : 275 Members',
//                       style: GoogleFonts.acme(fontSize: 20),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: GestureDetector(
//                     onTap: () {
//                       showDialog(
//                         context: context,
//                         builder: (context) => AlertDialog(
//                           title: Text(
//                             'Are you sure?',
//                             style: GoogleFonts.fugazOne(color: Colors.black),
//                           ),
//                           actions: [
//                             TextButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 },
//                                 child: Text(
//                                   'Yes',
//                                   style:
//                                       GoogleFonts.fugazOne(color: Colors.black),
//                                 )),
//                             TextButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 },
//                                 child: Text(
//                                   'No',
//                                   style:
//                                       GoogleFonts.fugazOne(color: Colors.black),
//                                 ))
//                           ],
//                         ),
//                       );
//                     },
//                     child: Container(
//                       height: 38,
//                       width: 100,
//                       color: const Color(0xff2D3037),
//                       child: Center(
//                           child: Text(
//                         'Delete',
//                         style: GoogleFonts.fugazOne(color: Colors.white),
//                       )),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: GestureDetector(
//                     onTap: () => Navigator.of(context).pop(),
//                     child: Container(
//                       height: 38,
//                       width: 100,
//                       color: const Color(0xff2D3037),
//                       child: Center(
//                           child: Text(
//                         'Close',
//                         style: GoogleFonts.fugazOne(color: Colors.white),
//                       )),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }

void _showcastingDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const AlertDialogcastingWithTextField(),
  );
}

class AlertDialogcastingWithTextField extends StatefulWidget {
  const AlertDialogcastingWithTextField({super.key});

  @override
  _AlertDialogcastingWithTextFieldState createState() =>
      _AlertDialogcastingWithTextFieldState();
}

class _AlertDialogcastingWithTextFieldState
    extends State<AlertDialogcastingWithTextField> {
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
            SizedBox(
              height: 300,
              width: 1200,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROSMet3vkB1L6fVSNH5CZl8HoCmxUMjaMNuQ&s',
                fit: BoxFit.fill,
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
                      width: 100,
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

void _showrentalDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const AlertDialogrentalWithTextField(),
  );
}

class AlertDialogrentalWithTextField extends StatefulWidget {
  const AlertDialogrentalWithTextField({super.key});

  @override
  _AlertDialogrentalWithTextFieldState createState() =>
      _AlertDialogrentalWithTextFieldState();
}

class _AlertDialogrentalWithTextFieldState
    extends State<AlertDialogrentalWithTextField> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _pricecontroller = TextEditingController();
  bool _isEditable = false;

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 250,
              width: 250,
              child: Column(
                children: [
                  Image.asset('images/cam.png'),
                  // SizedBox(
                  //   height: 150,
                  // ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 50,
                          height: 40,
                          child: Image.asset('images/cam1.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 50,
                          height: 40,
                          child: Image.asset('images/cam2.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 50,
                          height: 40,
                          child: Image.asset('images/cam3.png'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
              ),
              child: Column(
                children: [
                  SizedBox(
                      height: 50,
                      width: 600,
                      child: TextFormField(
                        controller: _titleController,
                        readOnly: !_isEditable,
                        style: GoogleFonts.fugazOne(
                            color: const Color(0xff2D3037)),
                        decoration: const InputDecoration(
                            hintText: 'Sony Alpha 7 III',
                            hintStyle: TextStyle(color: Color(0xff2D3037))),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 100,
                      width: 600,
                      child: TextFormField(
                        controller: _descriptionController,
                        readOnly: !_isEditable,
                        style: GoogleFonts.fugazOne(
                            color: const Color(0xff2D3037)),
                        keyboardType: TextInputType.multiline,
                        minLines: 3, // This sets the initial number of lines
                        maxLines: 5,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(color: Color(0xff2D3037)),
                          hintText:
                              'Sony Alpha ILCE-7M3K Full-Frame 24.2MP Mirrorless Digital SLR Camera\n with 28-70mm Zoom Lens (4K Full Frame, Real-Time \nEye Auto Focus, Tiltable LCD, Low Light Camera) \nwith Free Bag - Black',
                          border: UnderlineInputBorder(),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 150,
                          width: 460,
                          child: TextFormField(
                            controller: _pricecontroller,
                            readOnly: !_isEditable,
                            style: GoogleFonts.fugazOne(
                                color: const Color(0xff2D3037)),
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(color: Color(0xff2D3037)),
                              hintText: '10000/Day',
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isEditable = !_isEditable;
                              if (_isEditable) {
                                _titleController.clear();
                                _descriptionController.clear();
                                _pricecontroller.clear();
                              }
                            });
                          },
                          child: Container(
                            height: 38,
                            width: 100,
                            color: const Color(0xff2D3037),
                            child: Center(
                                child: Text(
                              _isEditable ? 'Save' : 'Edit',
                              style: GoogleFonts.fugazOne(color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 38,
                            width: 100,
                            color: const Color(0xff2D3037),
                            child: Center(
                                child: Text(
                              'Submit',
                              style: GoogleFonts.fugazOne(color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

void _showrcoursesDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialogcoursesWithTextField(),
  );
}

// ignore: must_be_immutable
class AlertDialogcoursesWithTextField extends StatefulWidget {
  AlertDialogcoursesWithTextField({super.key});

  @override
  _AlertDialogcoursesWithTextFieldState createState() =>
      _AlertDialogcoursesWithTextFieldState();
}

class _AlertDialogcoursesWithTextFieldState
    extends State<AlertDialogcoursesWithTextField> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _pricecontroller = TextEditingController();
  bool _isEditable = false;
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 250,
              width: 250,
              child: Column(
                children: [
                  Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset('images/actingclass.jpg')),
                  // SizedBox(
                  //   height: 150,
                  // ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
              ),
              child: Column(
                children: [
                  SizedBox(
                      height: 50,
                      width: 600,
                      child: TextFormField(
                        controller: _titleController,
                        readOnly: !_isEditable,
                        style: GoogleFonts.fugazOne(
                            color: const Color(0xff2D3037)),
                        decoration: const InputDecoration(
                            hintText: 'Proffesional acting tutorial',
                            hintStyle: TextStyle(color: Color(0xff2D3037))),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 100,
                      width: 600,
                      child: TextFormField(
                        controller: _descriptionController,
                        readOnly: !_isEditable,
                        style: GoogleFonts.fugazOne(
                            color: const Color(0xff2D3037)),
                        keyboardType: TextInputType.multiline,
                        minLines: 3, // This sets the initial number of lines
                        maxLines: 5,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(color: Color(0xff2D3037)),
                          hintText:
                              'Do you dream of captivating audiences with your presence and storytelling\n abilities? This acting class offers a comprehensive \nand engaging introduction to the fundamentals of acting,\n designed to unlock your potential as a performer.',
                          border: UnderlineInputBorder(),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 150,
                          width: 320,
                          child: TextFormField(
                            controller: _pricecontroller,
                            readOnly: !_isEditable,
                            style: GoogleFonts.fugazOne(
                                color: const Color(0xff2D3037)),
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(color: Color(0xff2D3037)),
                              hintText: '10000RS',
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isEditable = !_isEditable;
                              if (_isEditable) {
                                _titleController.clear();
                                _descriptionController.clear();
                                _pricecontroller.clear();
                              }
                            });
                          },
                          child: Container(
                            height: 38,
                            width: 100,
                            color: const Color(0xff2D3037),
                            child: Center(
                                child: Text(
                              _isEditable ? 'Save' : 'Edit',
                              style: GoogleFonts.fugazOne(color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 38,
                            width: 100,
                            color: const Color(0xff2D3037),
                            child: Center(
                                child: Text(
                              'Submit',
                              style: GoogleFonts.fugazOne(color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

void _showaddcoursesDialog(BuildContext context) {
  showDialog(
      context: context, builder: (context) => const Alertdialogaddcourses());
}

class Alertdialogaddcourses extends StatefulWidget {
  const Alertdialogaddcourses({super.key});

  @override
  State<Alertdialogaddcourses> createState() => _AlertdialogaddcoursesState();
}

class _AlertdialogaddcoursesState extends State<Alertdialogaddcourses> {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffEBC9A9),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child: Column(
                  children: [
                    Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.asset('images/cam placeholder.png')),
                    // SizedBox(
                    //   height: 150,
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                ),
                child: Column(
                  children: [
                    SizedBox(
                        height: 50,
                        width: 600,
                        child: TextFormField(
                          style: GoogleFonts.fugazOne(
                              color: const Color(0xff2D3037)),
                          decoration: const InputDecoration(
                            hintText: 'Course title',
                            // hintStyle: TextStyle(color: Color(0xff2D3037))
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 100,
                        width: 600,
                        child: TextFormField(
                          style: GoogleFonts.fugazOne(
                              color: const Color(0xff2D3037)),
                          keyboardType: TextInputType.multiline,
                          minLines: 3, // This sets the initial number of lines
                          maxLines: 5,
                          decoration: const InputDecoration(
                            // hintStyle: TextStyle(color: Color(0xff2D3037)),
                            hintText: 'Course description',
                            border: UnderlineInputBorder(),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            height: 150,
                            width: 320,
                            child: TextFormField(
                              style: GoogleFonts.fugazOne(
                                  color: const Color(0xff2D3037)),
                              decoration: const InputDecoration(
                                // hintStyle: TextStyle(color: Color(0xff2D3037)),
                                hintText: 'Course fee',
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: GestureDetector(
                            onTap: () => _alertdialogaddcourse2ndpage(context),
                            child: Container(
                              height: 38,
                              width: 100,
                              color: const Color(0xff2D3037),
                              child: Center(
                                  child: Text(
                                'Next',
                                style:
                                    GoogleFonts.fugazOne(color: Colors.white),
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
                              color: const Color(0xff2D3037),
                              child: Center(
                                  child: Text(
                                'Close',
                                style:
                                    GoogleFonts.fugazOne(color: Colors.white),
                              )),
                            ),
                          ),
                        ),
                      ],
                    )
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

void _alertdialogaddcourse2ndpage(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => const Alertdialogaddcourse2page());
}

//add course 2nd page dialog
class Alertdialogaddcourse2page extends StatefulWidget {
  const Alertdialogaddcourse2page({super.key});

  @override
  State<Alertdialogaddcourse2page> createState() =>
      _Alertdialogaddcourse2pageState();
}

class _Alertdialogaddcourse2pageState extends State<Alertdialogaddcourse2page> {
  final List chapters = ['c1', 'c2', 'c3', 'c4', 'c5'];
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffEBC9A9),
          ),
          // ignore: prefer_const_constructors
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                              height: 50,
                              width: 500,
                              child: TextFormField(
                                style: GoogleFonts.fugazOne(
                                    color: const Color(0xff2D3037)),
                                decoration: const InputDecoration(
                                  hintText: 'Course title',
                                  // hintStyle: TextStyle(color: Color(0xff2D3037))
                                ),
                              )),
                          TextButton.icon(
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                  Color(0xff2D3037),
                                ),
                              ),
                              onPressed: () {},
                              icon: const Icon(Icons.video_collection_rounded),
                              label: Text(
                                'Upload file',
                                style:
                                    GoogleFonts.fugazOne(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                    itemCount: chapters.length,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        height: 38,
                        width: 100,
                        color: const Color(0xff2D3037),
                        child: Center(
                            child: Text(
                          'Back',
                          style: GoogleFonts.fugazOne(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () => Coursesview,
                      child: Container(
                        height: 38,
                        width: 100,
                        color: const Color(0xff2D3037),
                        child: Center(
                            child: Text(
                          'Upload',
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
      ),
    );
  }
}

// //dropdown addproduct
// void _showaddproductDialog(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (context) => AlertDialogrentalWithTextField(),
//   );
// }

// class AlertDialogaddproductWithTextField extends StatefulWidget {
//   @override
//   _AlertDialogaddproductWithTextFieldState createState() =>
//       _AlertDialogaddproductWithTextFieldState();
// }

// class _AlertDialogaddproductWithTextFieldState
//     extends State<AlertDialogaddproductWithTextField> {
//   final TextEditingController _titleController = TextEditingController();
//   final TextEditingController _descriptionController = TextEditingController();
//   final TextEditingController _pricecontroller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//         child: Container(
//       height: 400,
//       width: 1200,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: const Color(0xff36393F),
//       ),
//       child: Container(
//         // width: 100,
//         // height: 200,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color: const Color(0xffEBC9A9),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             SizedBox(
//               height: 250,
//               width: 250,
//               child: Column(
//                 children: [
//                   Image.asset('images/cam placeholder.png'),
//                   // SizedBox(
//                   //   height: 150,
//                   // ),
//                   SizedBox(
//                     width: 200,
//                     height: 50,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(
//                           width: 50,
//                           height: 40,
//                           child: Image.asset('images/cam placeholder.png'),
//                         ),
//                         const SizedBox(
//                           width: 10,
//                         ),
//                         SizedBox(
//                           width: 50,
//                           height: 40,
//                           child: Image.asset('images/cam placeholder.png'),
//                         ),
//                         const SizedBox(
//                           width: 10,
//                         ),
//                         SizedBox(
//                           width: 50,
//                           height: 40,
//                           child: Image.asset('images/cam placeholder.png'),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 top: 50,
//               ),
//               child: Column(
//                 children: [
//                   SizedBox(
//                       height: 50,
//                       width: 600,
//                       child: TextFormField(
//                         controller: _titleController,
//                         style: GoogleFonts.fugazOne(color: const Color(0xff2D3037)),
//                         decoration: const InputDecoration(
//                             hintText: 'Product name',
//                             hintStyle: TextStyle(color: Color(0xff2D3037))),
//                       )),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   SizedBox(
//                       height: 100,
//                       width: 600,
//                       child: TextFormField(
//                         controller: _descriptionController,

//                         style: GoogleFonts.fugazOne(color: const Color(0xff2D3037)),
//                         keyboardType: TextInputType.multiline,
//                         minLines: 3, // This sets the initial number of lines
//                         maxLines: 5,
//                         decoration: const InputDecoration(
//                           hintStyle: TextStyle(color: Color(0xff2D3037)),
//                           hintText: 'Product description',
//                           border: UnderlineInputBorder(),
//                         ),
//                       )),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       SizedBox(
//                           height: 150,
//                           width: 460,
//                           child: TextFormField(
//                             controller: _pricecontroller,
//                             style:
//                                 GoogleFonts.fugazOne(color: const Color(0xff2D3037)),
//                             decoration: const InputDecoration(
//                               hintStyle: TextStyle(color: Color(0xff2D3037)),
//                               hintText: 'Price/day',
//                             ),
//                           )),
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               _titleController.text;
//                               _descriptionController.text;
//                               _pricecontroller.text;
//                             });
//                           },
//                           child: Container(
//                             height: 38,
//                             width: 100,
//                             color: const Color(0xff2D3037),
//                             child: Center(
//                                 child: Text(
//                               'Save',
//                               style: GoogleFonts.fugazOne(color: Colors.white),
//                             )),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: GestureDetector(
//                           onTap: () {
//                             Navigator.of(context).pop();
//                           },
//                           child: Container(
//                             height: 38,
//                             width: 100,
//                             color: const Color(0xff2D3037),
//                             child: Center(
//                                 child: Text(
//                               'Submit',
//                               style: GoogleFonts.fugazOne(color: Colors.white),
//                             )),
//                           ),
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }
// //dropdown addproduct

// ignore: camel_case_types
// class nestedtab extends StatefulWidget {
  
//   const nestedtab({super.key});

//   @override
//   State<nestedtab> createState() => _nestedtabState();
// }

// class _nestedtabState extends State<nestedtab>
//     with SingleTickerProviderStateMixin {
      
//   @override
//   Widget build(BuildContext context) {
//     return  DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         body: Column(
//           children: [
//             TabBar(tabs: [
//               Tab(
//                 child: App_custom_tabbar(title: 'Camera'),
//               ),
//               Tab(
//                 child: App_custom_tabbar(title: 'Lights'),
//               ),
//               Tab(
//                 child: App_custom_tabbar(title: 'Mics'),
//               ),
//               Tab(
//                 child: App_custom_tabbar(title: 'Others'),
//               ),
//             ]),
//             ListView.builder(
//             itemBuilder: (context, index) {
//               return GestureDetector(
//                 onTap: () => _showrentalDialog(context),
//                 child: Container(
//                   margin: const EdgeInsets.only(
//                       left: 400, right: 400, top: 20, bottom: 20),
//                   width: width,
//                   height: 200,
//                   decoration: BoxDecoration(
//                       color: const Color.fromARGB(255, 229, 206, 177),
//                       borderRadius: BorderRadius.circular(20)),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(top: 10, left: 10),
//                             child: Text(
//                               '17000/Day',
//                               style: GoogleFonts.fugazOne(
//                                 color: const Color.fromARGB(255, 46, 53, 62),
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 290,
//                           ),
//                           IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.favorite,
//                                 color: Colors.red[600],
//                               ))
//                         ],
//                       ),
//                       Image.asset(
//                         'images/cam.png',
//                         scale: 2,
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Center(
//                             child: Padding(
//                               padding: const EdgeInsets.only(left: 140),
//                               child: Text(
//                                 'Sony Alpha 7',
//                                 style: GoogleFonts.fugazOne(
//                                   color: const Color.fromARGB(255, 46, 53, 62),
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 80),
//                             child: IconButton(
//                                 onPressed: () {},
//                                 icon: const Icon(Icons.shopping_cart)),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//             itemCount: 5,
//           ),
//           ],
//         ),
        
//       ),
//     );
//   }
// }
