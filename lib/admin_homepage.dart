import 'dart:io';

import 'package:cinebyte_admin_webapp/admin_pages/admin_rentalservice.dart';
import 'package:cinebyte_admin_webapp/admin_schedules_page.dart';
import 'package:cinebyte_admin_webapp/admin_settings_page.dart';
import 'package:cinebyte_admin_webapp/customadminattribute.dart';
import 'package:cinebyte_admin_webapp/models/news_model.dart';
import 'package:cinebyte_admin_webapp/services/news_Service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import 'package:video_player/video_player.dart';

class admin_homepage extends StatefulWidget {
  const admin_homepage({super.key});

  @override
  State<admin_homepage> createState() => _admin_homepageState();
}

class _admin_homepageState extends State<admin_homepage> {
  Stream? feedbackStream;
  File? selectedFile;
  VideoPlayerController? _videoPlayerController;
  getOnTheLoad() {
    feedbackStream =
        FirebaseFirestore.instance.collection('feedback').snapshots();
  }

  @override
  void initState() {
    getOnTheLoad();
    // _pickedImageGallery();
    super.initState();
  }

  @override
  Future<void> _pickedImageGallery() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage == null) return;
    setState(() {
      selectedFile = File(pickedImage.path);
    });
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.9;
    double height = MediaQuery.of(context).size.height * 0.7;
    return DefaultTabController(
      length: 5,
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
                                      child: App_custom_tabbar(title: 'Home'),
                                    ),
                                    Tab(
                                      child:
                                          App_custom_tabbar(title: 'Feedback'),
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
                            Stack(
                              children: [
                                SizedBox(
                                  height: 400,
                                  width: 1300,
                                  child: CarouselSlider(
                                      items: [
                                        Image.asset(
                                          'images/bg2_premalu.jpg',
                                          fit: BoxFit.cover,
                                          width: 1300,
                                        ),
                                        Image.asset(
                                          'images/aavesham.jpg',
                                          fit: BoxFit.cover,
                                          width: 1300,
                                        )
                                      ],
                                      options: CarouselOptions(
                                        clipBehavior: Clip.hardEdge,
                                        // height: 200,

                                        aspectRatio: 16 / 9,
                                        enableInfiniteScroll: true,
                                        autoPlay: true,
                                        autoPlayInterval:
                                            const Duration(seconds: 3),
                                        autoPlayAnimationDuration:
                                            const Duration(milliseconds: 800),
                                        enlargeCenterPage: true,
                                        enlargeFactor: 0.8,
                                      )),
                                ),
                                Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black38,
                                  ),
                                  height: 100,
                                  width: 400,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Add latest events and festivals',
                                        style: GoogleFonts.fugazOne(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Positioned(
                                          child: IconButton(
                                              onPressed: () {
                                                try {
                                                  _pickedImageGallery()
                                                      .then((value) async {
                                                    SettableMetadata metadata =
                                                        SettableMetadata(
                                                            contentType:
                                                                'image/jpeg');
                                                    final currenttime =
                                                        TimeOfDay.now();
                                                    UploadTask uploadTask =
                                                        FirebaseStorage.instance
                                                            .ref()
                                                            .child(
                                                                'newsimage/news$currenttime')
                                                            .putFile(
                                                                selectedFile!,
                                                                metadata);
                                                    String newsid =
                                                        const Uuid().v1();
                                                    TaskSnapshot snapshot =
                                                        await uploadTask;
                                                    await snapshot.ref
                                                        .getDownloadURL()
                                                        .then((url) {
                                                      newsModel newsmodel =
                                                          newsModel(
                                                              newsId: newsid,
                                                              newsImage: url);
                                                      newsService _newsservice =
                                                          newsService();
                                                      _newsservice.createnews(
                                                          newsmodel);
                                                      Fluttertoast.showToast(
                                                        msg: "News uploaded",
                                                        toastLength:
                                                            Toast.LENGTH_SHORT,
                                                        gravity:
                                                            ToastGravity.CENTER,
                                                        timeInSecForIosWeb: 1,
                                                        backgroundColor:
                                                            Colors.green,
                                                        textColor: Colors.white,
                                                        fontSize: 16.0,
                                                      );
                                                    });
                                                  });
                                                } catch (e) {
                                                  Fluttertoast.showToast(
                                                    msg: "Upload Failed",
                                                    toastLength:
                                                        Toast.LENGTH_SHORT,
                                                    gravity:
                                                        ToastGravity.CENTER,
                                                    timeInSecForIosWeb: 1,
                                                    backgroundColor: Colors.red,
                                                    textColor: Colors.white,
                                                    fontSize: 16.0,
                                                  );
                                                }
                                              },
                                              icon: const Icon(
                                                Icons.add_box,
                                                color: Colors.white,
                                                size: 50,
                                              ))),
                                    ],
                                  ),
                                ))
                              ],
                            ),
                            // feedback
                            StreamBuilder(
                                stream: feedbackStream,
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
                                        return Column(
                                          children: [
                                            SizedBox(
                                              height: 100,
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    ds['email'],
                                                    style: GoogleFonts.fugazOne(
                                                        color: textcolor,
                                                        fontSize: 18),
                                                  ),
                                                  Text(
                                                    ds['feedback_description'],
                                                    style: GoogleFonts.fugazOne(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Divider(
                                              thickness: 1,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                            )
                                          ],
                                        );
                                      },
                                      itemCount: 4,
                                    );
                                  }
                                  return const Center(
                                    child: Text('Data not found'),
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

void _showaddnewsDialog(BuildContext context) {
  showDialog(
      context: context, builder: (context) => const Alertdialogaddnews());
}

class Alertdialogaddnews extends StatefulWidget {
  const Alertdialogaddnews({super.key});

  @override
  State<Alertdialogaddnews> createState() => _AlertdialogaddnewsState();
}

class _AlertdialogaddnewsState extends State<Alertdialogaddnews> {
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
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.asset('images/cam placeholder.png')),
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
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: GestureDetector(
                            // onTap: () => _alertdialogaddcourse2ndpage(context),
                            child: Container(
                              height: 38,
                              width: 100,
                              color: const Color(0xff2D3037),
                              child: Center(
                                  child: Text(
                                'Add',
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

void _showfeedbackDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const AlertDialogfeedbackWithTextField(),
  );
}

class AlertDialogfeedbackWithTextField extends StatefulWidget {
  const AlertDialogfeedbackWithTextField({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AlertDialogfeedbackWithTextFieldState createState() =>
      _AlertDialogfeedbackWithTextFieldState();
}

class _AlertDialogfeedbackWithTextFieldState
    extends State<AlertDialogfeedbackWithTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      height: 400,
      width: 1200,
      color: const Color(0xff36393F),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'User 1',
                  style: GoogleFonts.fugazOne(color: textcolor, fontSize: 18),
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
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'Reply..',
                  hintStyle: GoogleFonts.fugazOne(color: Colors.grey)),
              controller: _controller,
              keyboardType: TextInputType.multiline,
              minLines: 1, // This sets the initial number of lines
              maxLines: 4,
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
                color: const Color(0xffFFC28C),
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
