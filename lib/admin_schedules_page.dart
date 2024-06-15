import 'package:cinebyte_admin_webapp/admin_homepage.dart';
import 'package:cinebyte_admin_webapp/admin_pages/admin_rentalservice.dart';
import 'package:cinebyte_admin_webapp/admin_settings_page.dart';
import 'package:cinebyte_admin_webapp/customadminattribute.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  Stream? meetingstream;
  Stream? shootingStream;
  Stream? userStream;
  getMeetingStream() {
    meetingstream =
        FirebaseFirestore.instance.collection('meetings').snapshots();
  }

  Future<DocumentSnapshot> getUserDocument(String userId) {
    return FirebaseFirestore.instance.collection('users').doc(userId).get();
  }

  // getSenderUserStream(DocumentSnapshot ds) {
  //   DocumentSnapshot? userid = FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(ds['senderUserId'])
  //       .get() as DocumentSnapshot<Object?>?;
  // }

  // getRecieverrUserStream(DocumentSnapshot ds) {
  //   DocumentSnapshot? recieverid = FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(ds['receiverUserId'])
  //       .get() as DocumentSnapshot<Object?>?;
  // }

  getShootingStream() {
    shootingStream =
        FirebaseFirestore.instance.collection('shootings').snapshots();
  }

  // getsenderuserid(DocumentSnapshot ds) async {
  //   String senderId = ds['senderUserId'];
  //   // String recieverID = ds['receiverUserId'];
  //   DocumentSnapshot senderSnapshot = await FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(senderId)
  //       .get();
  //   final sendId = senderSnapshot.data();
  //   return sendId;
  // }

  // Future getRecieverid(DocumentSnapshot ds) async {
  //   String recieverID = ds['receiverUserId'];
  //   // String recieverID = ds['receiverUserId'];
  //   DocumentSnapshot recieversnapshot = await FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(recieverID)
  //       .get();
  // }

  @override
  void initState() {
    getMeetingStream();
    getShootingStream();
    super.initState();
  }

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
                                         Icon(
                                          Icons.calendar_month_rounded,
                                          color:textcolor,
                                        ),
                                        Text(
                                          'Schedules',
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
                                      child:
                                          App_custom_tabbar(title: 'Scripts'),
                                    ),
                                    Tab(
                                      child:
                                          App_custom_tabbar(title: 'Shootings'),
                                    ),
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
                          color: const Color(0xff36393F),
                          child: TabBarView(children: [
                            StreamBuilder(
                                stream: FirebaseFirestore.instance
                                    .collection('meetings')
                                    .snapshots(),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                  if (snapshot.hasData &&
                                      snapshot.data!.docs.isNotEmpty) {
                                    return ListView.builder(
                                      itemBuilder: (context, index) {
                                        final DocumentSnapshot ds =
                                            snapshot.data!.docs[index];
                                        return GestureDetector(
                                          // onTap: () => _showscriptDialog(context),
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                top: 20, left: 300, right: 300),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: const Color.fromARGB(
                                                  255, 234, 210, 178),
                                            ),
                                            width: 800,
                                            height: 180,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                  children: [
                                                    Text(
                                                      ds['scriptName'],
                                                      style: GoogleFonts.acme(
                                                        color: const Color(
                                                            0xff2D3037),
                                                        fontSize: 20,
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
                                                Text(
                                                      'Meeting Date : ${ds['confirmedDate']}',
                                                      style: GoogleFonts.acme(
                                                          color: const Color(
                                                              0xff2D3037)),
                                                    ),
                                                Center(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      
                                                      FutureBuilder<DocumentSnapshot>(
                                                        future: getUserDocument(ds['senderUserId']),
                                                        builder: (context, snapshot) {
                                                          if (snapshot.connectionState == ConnectionState.waiting) {
                                                            return const Text('Loading...');
                                                          }
                                                          if (!snapshot.hasData || snapshot.hasError) {
                                                            return const Text('Error');
                                                          }
                                                          final senderData = snapshot.data!.data() as Map<String, dynamic>;
                                                          return Text(
                                                            'Sender: ${senderData['name']}',
                                                            style: GoogleFonts.acme(color: const Color(0xff2D3037)),
                                                          );
                                                        },
                                                      ),
                                                      Center(
                                                        child: Text(
                                                          ds['meetingDescription'],
                                                          style: GoogleFonts
                                                              .lateef(),
                                                        ),
                                                      ),
                                                      FutureBuilder<DocumentSnapshot>(
                                                        future: getUserDocument(ds['receiverUserId']),
                                                        builder: (context, snapshot) {
                                                          if (snapshot.connectionState == ConnectionState.waiting) {
                                                            return const Text('Loading...');
                                                          }
                                                          if (!snapshot.hasData || snapshot.hasError) {
                                                            return const Text('Error');
                                                          }
                                                          final receiverData = snapshot.data!.data() as Map<String, dynamic>;
                                                          return Text(
                                                            'Receiver: ${receiverData['name']}',
                                                            style: GoogleFonts.acme(color: const Color(0xff2D3037)),
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      left: 17,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          ds['meetingType'],
                                                          style: GoogleFonts
                                                              .acme(),
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
                                      itemCount: snapshot.data!.docs.length,
                                    );
                                  }
                                  return Center(
                                      child: Text(
                                    'Something Error Occured',
                                    style: GoogleFonts.fugazOne(
                                        color: Colors.white),
                                  ));
                                }),
                            StreamBuilder(
                                stream: shootingStream,
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                  if (snapshot.hasData &&
                                      snapshot.data!.docs.length != 0) {
                                    return ListView.builder(
                                      itemBuilder: (context, index) {
                                        DocumentSnapshot ds =
                                            snapshot.data!.docs[index];
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: Center(
                                              child: Container(
                                            margin: const EdgeInsets.only(
                                                left: 300, right: 300, top: 20),
                                            height: 250,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              // color: Color.fromARGB(255, 234, 210, 178),
                                            ),
                                            clipBehavior: Clip.hardEdge,
                                            width: width,
                                            child: Card(
                                              elevation: 10,
                                              child: Image.network(
                                                ds['ShootingImage'],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )),
                                        );
                                      },
                                      itemCount: snapshot.data!.docs.length,
                                    );
                                  }
                                  return Center(
                                    child: Text(
                                      'Something Error Occured',
                                      style: GoogleFonts.fugazOne(
                                          color: Colors.white),
                                    ),
                                  );
                                }),
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
