// ignore: file_names
// import 'dart:html';

import 'package:colonizer_app/screens/4_ForgotPassword.dart';
import 'package:colonizer_app/screens/5_Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final styleRegular = const TextStyle(fontWeight: FontWeight.w400);
  final styleMedium = const TextStyle(fontWeight: FontWeight.w500);
  final styleSemiBold = const TextStyle(fontWeight: FontWeight.w600);
  final styleBold = const TextStyle(fontWeight: FontWeight.w700);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color(0xffFAFAFA)),
    );
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 70),
          Container(
            color: const Color(0xffFAFAFA),
            child: Padding(
              padding: const EdgeInsets.only(top: 55, right: 15, left: 15),
              child: Container(
                height: 480.h,
                width: 330.w,
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(7.r),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(
                            255, 228, 232, 234), //color of shadow
                        spreadRadius: 3.r, //spread radius
                        blurRadius: 4.r, // blur radius
                        // offset: Offset(0, 2),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, left: 22, right: 23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Let's ",
                              style: GoogleFonts.ibmPlexSans(
                                  textStyle: styleMedium,
                                  fontSize: 23.sp,
                                  color:
                                      const Color.fromARGB(255, 43, 41, 91))),
                          Text(
                            "Sign In",
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleSemiBold,
                                color: const Color(0xff68BFBB),
                                fontSize: 23.sp),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'One place for all your work place',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xff53587A),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Text('Email',
                          style: GoogleFonts.ibmPlexSans(
                              textStyle: styleMedium,
                              color: const Color(0xff303030))),
                      const SizedBox(height: 5),
                      SizedBox(
                          width: 285.w,
                          height: 38.h,
                          child: const TextField(
                              // textAlignVertical: TextAlignVertical.center,
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.mail_outline,
                                  color: Color(0xffBABABA),
                                ),
                                hintText: 'Enter your email',
                                hintStyle: TextStyle(
                                  color: Color(0xffBABABA),
                                ),
                                border: OutlineInputBorder(),
                                // contentPadding:
                                //     EdgeInsets.symmetric(vertical: 8.0),
                              ))),
                      const SizedBox(height: 14),
                      Text('Password',
                          style: GoogleFonts.ibmPlexSans(
                              textStyle: styleMedium,
                              color: const Color(0xff303030))),
                      const SizedBox(height: 5),
                      SizedBox(
                          width: 285.w,
                          height: 38.h,
                          child: const TextField(
                              // textAlignVertical: TextAlignVertical.center,
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock_outline,
                                  color: Color(0xffBABABA),
                                ),
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(color: Color(0xffBABABA)),
                                border: OutlineInputBorder(),
                                // contentPadding:
                                //     EdgeInsets.symmetric(vertical: 8.0),
                              ))),
                      const SizedBox(height: 4),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgetPassword(),
                                    ));
                              },
                              child: Text('Forgot Password?',
                                  style: GoogleFonts.raleway(
                                      textStyle: styleSemiBold,
                                      color: const Color(0xff68BFBB),
                                      fontSize: 11.sp)),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text('Show Password',
                                  style: GoogleFonts.raleway(
                                      textStyle: styleSemiBold,
                                      color: const Color(0xff68BFBB),
                                      fontSize: 11.sp)),
                            )
                          ]),
                      const SizedBox(height: 25),
                      Container(
                          height: 38.h,
                          width: 285.w,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 164, 217, 222),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(
                                    0,
                                    2,
                                  ), // changes position of shadow
                                ),
                              ],
                              color: const Color(0xff68BFBB),
                              borderRadius: BorderRadius.circular(4)),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Dashboard(),
                                    ));
                              },
                              child: Text('Login',
                                  style: GoogleFonts.inter(
                                      textStyle: styleSemiBold,
                                      color: Colors.white)))),
                      const SizedBox(height: 18),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          const Divider(
                            color: Color.fromARGB(255, 242, 235, 235),
                            // height: 5,

                            thickness: 1,
                            indent: 5,
                            endIndent: 5,
                          ),
                          Container(
                            height: 13.h,
                            width: 25.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.r),
                                color: const Color(0xffFAFAFA)),
                            child: Center(
                              child: Text(
                                'OR',
                                style: TextStyle(
                                  fontSize: 9.sp,
                                  color:
                                      const Color.fromARGB(255, 160, 165, 185),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 5),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 45.h,
                                    width: 92.5.w,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 29, vertical: 11.5),
                                    child: Container(
                                      height: 22.h,
                                      width: 22.w,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/google_icon.png'),
                                              fit: BoxFit.cover)),
                                    ),
                                  )
                                ],
                              )),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 5),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 45.h,
                                    width: 92.5.w,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 29, vertical: 11.5),
                                    child: Container(
                                      height: 22.h,
                                      width: 22.w,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/facebook_icon.png'),
                                              fit: BoxFit.cover)),
                                    ),
                                  )
                                ],
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
