import 'package:cinebyte_admin_webapp/customadminattribute.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reset_password_page extends StatefulWidget {
  const Reset_password_page({super.key});

  @override
  State<Reset_password_page> createState() => _Reset_password_pageState();
}

class _Reset_password_pageState extends State<Reset_password_page> {
  bool _issecurepassword = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.5;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(50),
                child: Text(
                  'Reset Password',
                  style: App_custom_heading_textStyle.style,
                ),
              ),
              Text(
                'Enter a new password',
                style: GoogleFonts.fugazOne(color: maintextcolor, fontSize: 20),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: 400,
                child: TextFormField(
                  obscureText: _issecurepassword,
                  decoration: InputDecoration(
                      label: Text(
                        'Password',
                        style: GoogleFonts.fugazOne(),
                      ),
                      prefixIcon: Icon(Icons.lock_rounded),
                      suffixIcon: togglepassword()),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 400,
                child: TextFormField(
                  obscureText: _issecurepassword,
                  decoration: InputDecoration(
                      label: Text(
                        'Confirm Password',
                        style: GoogleFonts.fugazOne(),
                      ),
                      prefixIcon: Icon(Icons.lock_rounded),
                      suffixIcon: togglepassword()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(textcolor),
                          minimumSize: MaterialStatePropertyAll(
                            Size(400, 50),
                          )),
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => register_account()));
                      },
                      child: Text(
                        "Submit",
                        style: GoogleFonts.fugazOne(
                            color: Color.fromARGB(255, 46, 53, 62),
                            fontSize: 18),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget togglepassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _issecurepassword = !_issecurepassword;
        });
      },
      icon: _issecurepassword
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }
}
