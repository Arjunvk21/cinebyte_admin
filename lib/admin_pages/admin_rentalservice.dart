// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api

import 'dart:io';
import 'dart:math';

import 'package:cinebyte_admin_webapp/admin_homepage.dart';
import 'package:cinebyte_admin_webapp/admin_schedules_page.dart';
import 'package:cinebyte_admin_webapp/admin_settings_page.dart';
import 'package:cinebyte_admin_webapp/customadminattribute.dart';
import 'package:cinebyte_admin_webapp/databasemethods.dart';
import 'package:cinebyte_admin_webapp/models/rentalsModel.dart';
import 'package:cinebyte_admin_webapp/services/rentalService.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

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
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'Home',
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
                                          const admin_rentalservice(),
                                    )),
                                    child: Column(
                                      children: [
                                         Icon(
                                          Icons.menu,
                                          color:textcolor,
                                        ),
                                        Text(
                                          'Menu',
                                          style: GoogleFonts.fugazOne(
                                              fontSize: 12,
                                              color:textcolor),
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
                                      iconbutton: IconButton(
                                          onPressed: () {
                                            _showaddAddRentalDialog(context);
                                          },
                                          icon: const Icon(Icons.add)),
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

// Add product
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

class Rentalview extends StatefulWidget {
  const Rentalview({
    super.key,
    required this.width,
  });

  final double width;

  @override
  State<Rentalview> createState() => _RentalviewState();
}

class _RentalviewState extends State<Rentalview> {
  Stream? rentalstream;

  getRentalDetails() {
    rentalstream = FirebaseFirestore.instance.collection('rentals').snapshots();
  }

  @override
  void initState() {
    // TODO: implement initState
    getRentalDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          StreamBuilder(
              stream: rentalstream,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data!.docs[index];
                    return GestureDetector(
                      onTap: () {
                        _showrentalDialog(context, ds);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 400, right: 400, top: 20, bottom: 20),
                        width: widget.width,
                        height: 200,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 229, 206, 177),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 100,
                              width: 200,
                              child: Image.network(
                                ds['productImage'],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    ds['productName'],
                                    style: GoogleFonts.fugazOne(
                                      color:
                                          const Color.fromARGB(255, 46, 53, 62),
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              ds['productratePerDay'],
                              style: GoogleFonts.fugazOne(
                                color: const Color.fromARGB(255, 46, 53, 62),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: snapshot.data!.docs.length,
                );
              }),
          // const Positioned(
          //   child: nestedtab(),
          // ),
        ],
      ),
    );
  }
}

class Castingview extends StatefulWidget {
  const Castingview({
    super.key,
  });

  @override
  State<Castingview> createState() => _CastingviewState();
}

class _CastingviewState extends State<Castingview> {
  Stream? castingstream;
  getCastingData() {
    castingstream =
        FirebaseFirestore.instance.collection('castingcalls').snapshots();
  }

  @override
  void initState() {
    getCastingData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
          stream: castingstream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasData && snapshot.data!.docs.length != 0) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  DocumentSnapshot ds = snapshot.data!.docs[index];
                  return GestureDetector(
                    onTap: () => _showcastingDialog(context, ds),
                    child: Container(
                      child: Image.network(
                        ds['poster'],
                        fit: BoxFit.cover,
                      ),
                      margin:
                          const EdgeInsets.only(left: 300, right: 300, top: 20),
                      height: 250,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 229, 206, 177),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                },
                itemCount: snapshot.data!.docs.length,
              );
            }
            return Center(
              child: Text(
                'No casting calls uploaded',
                style: GoogleFonts.fugazOne(color: Colors.white),
              ),
            );
          }),
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

class Scriptview extends StatefulWidget {
  const Scriptview({
    super.key,
  });

  @override
  State<Scriptview> createState() => _ScriptviewState();
}

class _ScriptviewState extends State<Scriptview> {
  Stream? scriptStream;
  String? scriptUID;
  DocumentSnapshot? userDoc;
  getscripts() {
    scriptStream = FirebaseFirestore.instance.collection('Scripts').snapshots();
  }

  getUser(String user) async {
    userDoc =
        await FirebaseFirestore.instance.collection('users').doc(user).get();
    // print(userDoc!.data());
  }

  @override
  void initState() {
    getscripts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: scriptStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              DocumentSnapshot ds = snapshot.data!.docs[index];
              return GestureDetector(
                onTap: () => _showscriptDialog(context, ds),
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FutureBuilder(
                              future: getUser(ds['userid']),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                return Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 20),
                                  child: Container(
                                    decoration: const ShapeDecoration(
                                        shape: CircleBorder()),
                                    height: 50,
                                    width: 50,
                                    child: userDoc!.exists &&
                                            userDoc!['image'] != ""
                                        ? Image.network(userDoc!['image'])
                                        : const Center(
                                            child: Icon(Icons.person),
                                          ),
                                  ),
                                );
                              }),
                          Text(
                            ds['scriptname'],
                            style: GoogleFonts.acme(
                              color: const Color(0xff2D3037),
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            ds['date'],
                            style: GoogleFonts.acme(
                                color: const Color(0xff2D3037)),
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Text(
                                ds['scriptname'],
                                style: GoogleFonts.acme(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Text(
                                ds['scriptdescription'],
                                style: GoogleFonts.acme(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ds['scriptgenre'],
                              style: GoogleFonts.acme(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: snapshot.data!.docs.length,
          );
        });
  }
}

void _showscriptDialog(BuildContext context, DocumentSnapshot ds) {
  showDialog(
    context: context,
    builder: (context) => AlertDialogScriptWithTextField(
      docs: ds,
    ),
  );
}

class AlertDialogScriptWithTextField extends StatefulWidget {
  DocumentSnapshot? docs;

  AlertDialogScriptWithTextField({super.key, this.docs});

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
                      backgroundImage: NetworkImage(''),
                      radius: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 300),
                    child: GestureDetector(
                      onTap: () async {
                        await FirebaseFirestore.instance
                            .collection('Scripts')
                            .doc(widget.docs!['scriptid'])
                            .delete()
                            .then((value) => Fluttertoast.showToast(
                                  msg: "Script Deleted",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0,
                                ));
                        Navigator.of(context).pop();
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
                '',
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
                  widget.docs?['date'],
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
                      widget.docs?['scriptdescription'],
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
                      widget.docs?['scriptgenre'],
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

void _showcastingDialog(BuildContext context, DocumentSnapshot data) {
  showDialog(
    context: context,
    builder: (context) => AlertDialogcastingWithTextField(
      castImage: data,
    ),
  );
}

class AlertDialogcastingWithTextField extends StatefulWidget {
  DocumentSnapshot? castImage;
  AlertDialogcastingWithTextField({super.key, this.castImage});

  @override
  _AlertDialogcastingWithTextFieldState createState() =>
      _AlertDialogcastingWithTextFieldState();
}

class _AlertDialogcastingWithTextFieldState
    extends State<AlertDialogcastingWithTextField> {
  final TextEditingController _controller = TextEditingController();
  Stream? caststream = databaseMethods().castingcallStream;
  @override
  void initState() {
    caststream;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Stack(
      children: [
        Container(
          height: 400,
          width: 1200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff36393F),
          ),
          child: Image.network(
            widget.castImage?['poster'],
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: 300,
            left: 500,
            child: Row(
              // Container(color: Colors.red,height: 100,width: 200,)Row(
              children: [
                GestureDetector(
                  onTap: () {
                    FirebaseFirestore.instance
                        .collection('castingcalls')
                        .doc(widget.castImage!['castingId'])
                        .delete()
                        .then((value) => Fluttertoast.showToast(
                              msg: "Casting Call Deleted",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.green,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            ));
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
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
                GestureDetector(
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
              ],
            )),
      ],
    ));
  }
}

void _showrentalDialog(BuildContext context, DocumentSnapshot data) {
  showDialog(
    context: context,
    builder: (context) => AlertDialogrentalWithTextField(rentdata: data),
  );
}

void _showAddRentalDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const Addproduct(
      width: 250,
    ),
  );
}

class AlertDialogrentalWithTextField extends StatefulWidget {
  DocumentSnapshot? rentdata;
  AlertDialogrentalWithTextField({super.key, this.rentdata});

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
  final GlobalKey<FormState> _rentaleditingkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Form(
      key: _rentaleditingkey,
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
                    Image.network(widget.rentdata?['productImage']),
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
                          decoration: InputDecoration(
                              hintText: '${widget.rentdata?['productName']}',
                              hintStyle:
                                  const TextStyle(color: Color(0xff2D3037))),
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
                          decoration: InputDecoration(
                            hintStyle:
                                const TextStyle(color: Color(0xff2D3037)),
                            hintText:
                                '${widget.rentdata?['productDecription']}',
                            border: const UnderlineInputBorder(),
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
                              decoration: InputDecoration(
                                hintStyle:
                                    const TextStyle(color: Color(0xff2D3037)),
                                hintText:
                                    '${widget.rentdata?['productratePerDay']}',
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: GestureDetector(
                            onTap: () async {
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
                                style:
                                    GoogleFonts.fugazOne(color: Colors.white),
                              )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: GestureDetector(
                            onTap: () async {
                              try {
                                String productId =
                                    widget.rentdata?['rentalProductId'];
                                await rentalService()
                                    .deleteRentalProduct(productId);
                                Navigator.of(context).pop();
                              } catch (e) {
                                Fluttertoast.showToast(
                                  msg: "Unable to delete this Product",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0,
                                );
                              }
                            },
                            child: Container(
                              height: 38,
                              width: 100,
                              color: const Color(0xff2D3037),
                              child: Center(
                                  child: Text(
                                'Delete',
                                style:
                                    GoogleFonts.fugazOne(color: Colors.white),
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

void _showaddAddRentalDialog(BuildContext context) {
  showDialog(
      context: context, builder: (context) => const AlertdialogaddRental());
}

class AlertdialogaddRental extends StatefulWidget {
  const AlertdialogaddRental({super.key});

  @override
  State<AlertdialogaddRental> createState() => _AlertdialogaddRentalState();
}

final TextEditingController productNameController = TextEditingController();
final TextEditingController productDescriptionController =
    TextEditingController();
final TextEditingController productRateController = TextEditingController();
final GlobalKey<FormState> _rentalkey = GlobalKey<FormState>();

class _AlertdialogaddRentalState extends State<AlertdialogaddRental> {
  @override
  void initState() {
    // TODO: implement initState

    uploadRentalDetails();
    super.initState();
  }

  Uint8List? file;
  Future pickedImage() async {
    if (kIsWeb) {
      try {
        final pickedImage =
            await ImagePicker().pickImage(source: ImageSource.gallery);

        if (pickedImage != null) {
          print('-------------------------$pickedImage----------------');
          //   setState(() async {
          //     // In web, pickedImage.path is a URL
          var bytes = await pickedImage.readAsBytes();
          setState(() {
            file = bytes;
          });
          Fluttertoast.showToast(
            msg: "Image selected",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          //   });
        } else {
          Fluttertoast.showToast(
            msg: "image selected",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      } catch (e) {
        print('------------------------------------$e------------------------');
        Fluttertoast.showToast(
          msg: "Error picking image: $e",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    } else {
      try {
        final XFile? pickedImage =
            await ImagePicker().pickImage(source: ImageSource.gallery);

        if (pickedImage != null) {
          var selected = File(pickedImage.path);
          setState(() {
            file = selected as Uint8List?;
          });
        } else {
          Fluttertoast.showToast(
            msg: "No image selected",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      } catch (e) {
        Fluttertoast.showToast(
          msg: "Error picking image: $e",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    }
  }

  // Future uploadRentalDetails() async {
  //   if (file == null) {
  //     Fluttertoast.showToast(
  //       msg: "Please select an image first",
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.BOTTOM,
  //       backgroundColor: Colors.red,
  //       textColor: Colors.white,
  //       fontSize: 16.0,
  //     );
  //     return;
  //   }
  //   try {
  //     final currentTime = DateTime.now().millisecondsSinceEpoch.toString();
  //     SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');
  //     UploadTask uploadTask = FirebaseStorage.instance
  //         .ref()
  //         .child('rentalimages/rentalImg$currentTime.jpeg')
  //         .putFile(file!, metadata);
  //     TaskSnapshot snapshot = await uploadTask;
  //     String downloadUrl = await snapshot.ref.getDownloadURL();
  //     var productId = Uuid().v1();
  //     rentalsModel rentalmodel = rentalsModel(
  //       rentalProductId: productId,
  //       productName: productNameController.text,
  //       productDecription: productDescriptionController.text,
  //       productratePerDay: productRateController.text,
  //       productImage: downloadUrl,
  //     );
  //     rentalService rentalservice = rentalService();
  //     await rentalservice.createRentals(rentalmodel);
  //     Fluttertoast.showToast(
  //       msg: "Product uploaded",
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Colors.green,
  //       textColor: Colors.white,
  //       fontSize: 16.0,
  //     );
  //     Navigator.of(context).pop();
  //   } catch (e) {
  //     Fluttertoast.showToast(
  //       msg: "Failed to upload Product",
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Colors.red,
  //       textColor: Colors.white,
  //       fontSize: 16.0,
  //     );
  //   }
  // }

  Future<void> uploadRentalDetails() async {
    if (file == null) {
      Fluttertoast.showToast(
        msg: "Please select an image first",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return;
    }

    try {
      final currentTime = DateTime.now().millisecondsSinceEpoch.toString();
      SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');
      UploadTask uploadTask = FirebaseStorage.instance
          .ref()
          .child('rentalimages/rentalImg$currentTime.jpeg')
          .putData(file!, metadata);

      TaskSnapshot snapshot = await uploadTask;
      String downloadUrl = await snapshot.ref.getDownloadURL();
      var productId = const Uuid().v1();
      rentalsModel rentalmodel = rentalsModel(
        rentalProductId: productId,
        productName: productNameController.text,
        productDecription: productDescriptionController.text,
        productratePerDay: productRateController.text,
        productImage: downloadUrl, // Ensure you are saving the image URL
      );

      rentalService rentalservice = rentalService();
      await rentalservice.createRentals(rentalmodel);

      // Fluttertoast.showToast(
      //   msg: "Product uploaded successfully",
      //   toastLength: Toast.LENGTH_SHORT,
      //   gravity: ToastGravity.CENTER,
      //   backgroundColor: Colors.green,
      //   textColor: Colors.white,
      //   fontSize: 16.0,
      // );
      Navigator.of(context).pop();
    } catch (e) {
      print('Upload error: $e'); // Log the error for debugging
      Fluttertoast.showToast(
        msg: "Failed to upload Product: $e",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Form(
        key: _rentalkey,
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
                      GestureDetector(
                        onTap: () => pickedImage(),
                        child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: kIsWeb
                                ? file != null
                                    ? Image.memory(
                                        file!,
                                        fit: BoxFit.cover,
                                      )
                                    : Image.asset(
                                        'images/cam placeholder.png',
                                        fit: BoxFit.cover,
                                      )
                                : Image.network('src')),
                      ),
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
                            controller: productNameController,
                            style: GoogleFonts.fugazOne(
                                color: const Color(0xff2D3037)),
                            decoration: const InputDecoration(
                              hintText: 'Product Name',
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
                            controller: productDescriptionController,
                            style: GoogleFonts.fugazOne(
                                color: const Color(0xff2D3037)),
                            keyboardType: TextInputType.multiline,
                            minLines:
                                3, // This sets the initial number of lines
                            maxLines: 5,
                            decoration: const InputDecoration(
                              // hintStyle: TextStyle(color: Color(0xff2D3037)),
                              hintText: 'Product description',
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
                                controller: productRateController,
                                style: GoogleFonts.fugazOne(
                                    color: const Color(0xff2D3037)),
                                decoration: const InputDecoration(
                                  // hintStyle: TextStyle(color: Color(0xff2D3037)),
                                  hintText: 'Product Rent Price',
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: GestureDetector(
                              onTap: () async {
                                if (_rentalkey.currentState!.validate()) {
                                  uploadRentalDetails();
                                  //   try {
                                  //     var productId = Uuid().v1();
                                  //     rentalsModel rentalmodel = rentalsModel(
                                  //       rentalProductId: productId,
                                  //       productName: productNameController.text,
                                  //       productDecription:
                                  //           productDescriptionController.text,
                                  //       productratePerDay:
                                  //           productRateController.text,
                                  //     );
                                  //     rentalService rentalservice =
                                  //         rentalService();
                                  //     await rentalservice
                                  //         .createRentals(rentalmodel);
                                  //   } catch (e) {
                                  //     Fluttertoast.showToast(
                                  //       msg: "Failed to upload Product",
                                  //       toastLength: Toast.LENGTH_SHORT,
                                  //       gravity: ToastGravity.CENTER,
                                  //       timeInSecForIosWeb: 1,
                                  //       backgroundColor: Colors.red,
                                  //       textColor: Colors.white,
                                  //       fontSize: 16.0,
                                  //     );
                                  //   }
                                }
                              },
                              child: Container(
                                height: 38,
                                width: 100,
                                color: const Color(0xff2D3037),
                                child: Center(
                                    child: Text(
                                  'Upload',
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
      ),
    );
  }
}
