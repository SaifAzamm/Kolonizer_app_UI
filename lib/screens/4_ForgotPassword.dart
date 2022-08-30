// ignore_for_file: file_names

import 'package:colonizer_app/screens/3_LogIn.dart';
import 'package:colonizer_app/screens/8_AddLeads1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final styleMedium = const TextStyle(fontWeight: FontWeight.w500);
  final styleBold = const TextStyle(fontWeight: FontWeight.w700);
  final styleSemibold = const TextStyle(fontWeight: FontWeight.w600);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
        // appBar: AppBar(
        //   leading: IconButton(
        //       onPressed: () {
        //         Navigator.push(
        //             (context),
        //             MaterialPageRoute(
        //               builder: (context) => const LogInScreen(),
        //             ));
        //       },
        //       icon: const Icon(
        //         Icons.arrow_back_ios_rounded,
        //         color: Color(0xff252B5C),
        //       )),
        //   backgroundColor: const Color(0xffFAFAFA),
        //   elevation: 0,
        // ),
        body: Column(
      children: [
        Stack(children: [
          Container(
            height: 99.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 4.r,
                      blurRadius: 3.r,
                      color: const Color.fromARGB(80, 100, 99, 99))
                ],
                color: const Color(0xffFAFAFA),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(6.r),
                    bottomLeft: Radius.circular(6.r))),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 42,
              left: 19,
            ),
            child: Row(
              children: [
                Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: const BoxDecoration(
                      color: Color(0xffF5F4F8),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LogInScreen(),
                            ));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 15,
                        color: Color(0xff252B5C),
                      ),
                    )),
                // Padding(
                //   padding: const EdgeInsets.only(left: 20),
                //   child: Text('Add Leads',
                //       style: GoogleFonts.inter(
                //           textStyle: styleSemibold,
                //           fontSize: 17.sp,
                //           color: const Color(0xffFFFFFF))),
                // ),
              ],
            ),
          ),
        ]),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color(0xffFAFAFA),
                child: Padding(
                  padding: const EdgeInsets.only(top: 90, right: 15, left: 15),
                  child: Container(
                    height: 310.h,
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
                      padding:
                          const EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Let's ",
                                  style: GoogleFonts.ibmPlexSans(
                                      textStyle: styleMedium,
                                      fontSize: 22,
                                      color: const Color.fromARGB(
                                          255, 43, 41, 91))),
                              Text("Create new Password",
                                  style: GoogleFonts.ibmPlexSans(
                                      textStyle: styleBold,
                                      fontSize: 22,
                                      color: const Color(0xff68BFBB)))
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'quis nosturd exercitation ullamco laboris noso ut',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xff53587A),
                            ),
                          ),
                          const SizedBox(height: 27),
                          Text('Email',
                              style: GoogleFonts.ibmPlexSans(
                                  textStyle: styleMedium,
                                  color: const Color(0xff303030))),
                          const SizedBox(height: 5),
                          SizedBox(
                              width: 290.w,
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
                                    hintStyle:
                                        TextStyle(color: Color(0xffBABABA)),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffBABABA))),
                                    // contentPadding:
                                    //     EdgeInsets.symmetric(vertical: 8.0),
                                  ))),
                          const SizedBox(height: 2),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Send agian?',
                                      style: GoogleFonts.raleway(
                                          textStyle: styleSemibold,
                                          color: const Color(0xff68BFBB),
                                          fontSize: 11.sp)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Show Password',
                                      style: GoogleFonts.raleway(
                                          textStyle: styleSemibold,
                                          color: const Color(0xff68BFBB),
                                          fontSize: 11.sp)),
                                )
                              ]),
                          const SizedBox(height: 20),
                          Container(
                              height: 38.h,
                              width: 290.w,
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
                                          builder: (context) =>
                                              const AddLeads1(),
                                        ));
                                  },
                                  child: Text(
                                    'Send link',
                                    style: GoogleFonts.inter(
                                        textStyle: styleSemibold,
                                        color: Colors.white),
                                  ))),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
