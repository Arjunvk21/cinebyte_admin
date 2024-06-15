import 'package:cinebyte_admin_webapp/admin_homepage.dart';
import 'package:cinebyte_admin_webapp/admin_pages/admin_firstpage.dart';
import 'package:cinebyte_admin_webapp/admin_pages/admin_forgot_password.dart';
import 'package:cinebyte_admin_webapp/customadminattribute.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class admin_getstarted extends StatefulWidget {
  const admin_getstarted({super.key});

  @override
  State<admin_getstarted> createState() => _admin_getstartedState();
}

class _admin_getstartedState extends State<admin_getstarted> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool _issecurepassword = true;
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  String? _validatepassword(value) {
    if (value!.isEmpty) {
      return 'Enter a password';
    }
    RegExp passwordRegex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (!passwordRegex.hasMatch(value)) {
      return 'Please enter a valid password';
    }
  }

  void _submitform() {
    if (_formkey.currentState!.validate()) {
      String username = usernamecontroller.text;
      String password = passwordcontroller.text;
      
        if (username == 'admin@gmail.com' && password == 'Admin@123') {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => admin_homepage(),
          ));
        }else{
          Fluttertoast.showToast(
          msg: "Invalid credential",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        }
      
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.5;

    return Scaffold(
      body: Center(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text(
                  'Get Started!',
                  style: GoogleFonts.fugazOne(
                      color: Color.fromARGB(255, 244, 207, 139), fontSize: 40),
                ),
              ),
              const SizedBox(
                height: 10,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Text(
                  'Sign In',
                  style: App_custom_heading_textStyle.style,
                ),
              ),
              SizedBox(
                width: 400,
                child: TextFormField(
                  controller: usernamecontroller,
                  style: GoogleFonts.fugazOne(color: maintextcolor),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a valid username';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: Text(
                        'Email',
                        style: GoogleFonts.fugazOne(
                            color: const Color.fromARGB(142, 158, 158, 158)),
                      ),
                      prefixIcon: Icon(Icons.account_circle_rounded,
                          color: const Color.fromARGB(142, 158, 158, 158))),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 400,
                child: TextFormField(
                  controller: passwordcontroller,
                  style: GoogleFonts.fugazOne(color: maintextcolor),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: _validatepassword,
                  obscureText: _issecurepassword,
                  decoration: InputDecoration(
                      label: Text(
                        'Password',
                        style: GoogleFonts.fugazOne(
                            color: const Color.fromARGB(142, 158, 158, 158)),
                      ),
                      prefixIcon: Icon(Icons.lock_rounded,
                          color: const Color.fromARGB(142, 158, 158, 158)),
                      suffixIcon: togglepassword()),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Reset_password_page(),
                      ));
                    },
                    child: Text(
                      'Forgot password?',
                      style: App_custom_textstyle.style,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Padding(
                  padding: const EdgeInsets.only(),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(textcolor),
                          minimumSize: MaterialStatePropertyAll(
                            Size(400, 50),
                          )),
                      onPressed: _submitform,
                      child: Text(
                        "Sign in",
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
