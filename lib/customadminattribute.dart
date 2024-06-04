import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

final Color textcolor = const Color(0xffF4D193);

final text2color = const Color.fromARGB(255, 229, 206, 177);
final maintextcolor = const Color(0xffF4D193);
final mainbuttoncolor = const Color.fromARGB(255, 234, 210, 178);

class App_custom_heading_textStyle {
  static TextStyle style =
      (GoogleFonts.fugazOne(color: maintextcolor, fontSize: 30));
}

class App_custom_textstyle {
  static TextStyle style = (GoogleFonts.fugazOne(color: maintextcolor));
}

class App_custom_textstyle_appbar {
  static TextStyle style = (GoogleFonts.fugazOne(
      color: const Color.fromARGB(255, 229, 206, 177), fontSize: 15));
}

class App_Custom_main_button extends StatelessWidget {
  final VoidCallback onPressed;
  final String button_text;
  const App_Custom_main_button(
      {super.key, required this.onPressed, required this.button_text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        'Register',
        style: GoogleFonts.fugazOne(color: Colors.black, fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(200, 50),
          backgroundColor: const Color.fromARGB(255, 229, 206, 177)),
    );
  }
}

class App_Custom_button extends StatelessWidget {
  final Color textcolor;
  // final Color backgroundColor;
  final String text;
  final VoidCallback onPressed;
  double hsize;
  double wsize;
  double fontsize;

  App_Custom_button(
      {super.key,
      required this.textcolor,
      // required this.backgroundColor,
      required this.hsize,
      required this.fontsize,
      required this.onPressed,
      required this.wsize,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
        Color.fromARGB(255, 234, 210, 178),
      )),
      onPressed: onPressed,
      child: Container(
        width: wsize,
        height: hsize,
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.fugazOne(color: textcolor),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

// class App_custom_appbar extends StatelessWidget {
//   final String text;
//   const App_custom_appbar({super.key, required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Color(0xff2D3037),
//       title: Padding(
//         padding: const EdgeInsets.only(top: 20),
//         child: Text(
//           text,
//           style: GoogleFonts.fugazOne(color: Colors.white),
//         ),
//       ),
//       actions: [
//         Padding(
//           padding: const EdgeInsets.only(right: 40, top: 15),
//           child: IconButton(
//               onPressed: () {}, icon: Icon(Icons.arrow_back_rounded)),
//         ),
//       ],
//       iconTheme: IconThemeData(color: Colors.white),
//     );
//   }
// }

class App_custom_tabbar extends StatefulWidget {
  final String title;
  final Widget? dropdownButton;
  final Widget? iconbutton;
  const App_custom_tabbar(
      {super.key, required this.title, this.dropdownButton, this.iconbutton});

  @override
  State<App_custom_tabbar> createState() => _App_custom_tabbarState();
}

class _App_custom_tabbarState extends State<App_custom_tabbar> {
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 20,
            width: 100,
            // margin: const EdgeInsetsDirectional.only(start: 2),
            // padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              // color: Color(0xffFFC28C),
              shape: BoxShape.rectangle,
            ),
            child: Center(
              child: Text(
                widget.title,
                style: GoogleFonts.fugazOne(
                  fontSize: 14,
                ),
                overflow: TextOverflow.visible,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          if (widget.dropdownButton != null) widget.dropdownButton!,
          if (widget.iconbutton != null) widget.iconbutton!,
        ],
      ),
    );
  }
}

class Custom_appbar_real extends StatelessWidget implements PreferredSize {
  final String title;
  const Custom_appbar_real({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff2D3037),
      title: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          title,
          style: GoogleFonts.fugazOne(color: Colors.white),
        ),
      ),
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.only(right: 40, top: 15),
      //     child: IconButton(
      //         onPressed: () {}, icon: Icon(Icons.arrow_back_rounded)),
      //   ),
      // ],
      iconTheme: const IconThemeData(color: Colors.white),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  // @override
  // // TODO: implement preferredSize
  // Size get preferredSize => throw UnimplementedError();
}

// class bottom_navigation_sheet extends StatelessWidget {
//    bottom_navigation_sheet({super.key,required this.pagename});
//   Widget? pagename;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         elevation: 10,
//         items: [
//           BottomNavigationBarItem(
//               icon: GestureDetector(
//                   onTap: () => Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => production_house_home_page(),
//                       )),
//                   child: Icon(Icons.home)),
//               label: 'home',
//               backgroundColor: Color(0xff36393F)),
//           BottomNavigationBarItem(
//               icon: GestureDetector(
//                   onTap: () => Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => production_page_menu_page(),
//                       )),
//                   child: Icon(Icons.menu)),
//               label: 'Menu',
//               backgroundColor: Color(0xff36393F)),
//           BottomNavigationBarItem(
//               icon: GestureDetector(
//                   onTap: () => Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => production_page_menu_page(),
//                       )),
//                   child: Icon(Icons.event_note)),
//               label: 'Schedules',
//               backgroundColor: Color(0xff36393F)),
//           BottomNavigationBarItem(
//               icon: GestureDetector(
//                   onTap: () => Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => production_page_menu_page(),
//                       )),
//                   child: Icon(Icons.settings)),
//               label: 'Settings',
//               backgroundColor: Color(0xff36393F)),
//         ],
//         currentIndex: bottomnavigation_indexnumber,
//         onTap: (int index) {
//           setState(() {
//             bottomnavigation_indexnumber = index;
//           });
//         },
//       ),
//     );
//   }
// }
