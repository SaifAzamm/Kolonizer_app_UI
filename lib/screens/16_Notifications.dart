import 'dart:ffi';

import 'package:colonizer_app/screens/5_Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final styleRegular = const TextStyle(fontWeight: FontWeight.w400);
  final styleMedium = const TextStyle(fontWeight: FontWeight.w500);
  final styleSemiBold = const TextStyle(fontWeight: FontWeight.w600);
  final styleBold = const TextStyle(fontWeight: FontWeight.w700);
  final styleExtraBold = const TextStyle(fontWeight: FontWeight.w800);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
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
                  color: const Color(0xff68BFBB),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(6.r),
                      bottomLeft: Radius.circular(6.r))),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  top: 42,
                  left: 19,
                  right: 19,
                ),
                child: Row(
                  children: [
                    Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            color: const Color(0xff68BFBB),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2.r,
                                  blurRadius: 2.r,
                                  color: const Color.fromARGB(80, 100, 99, 99))
                            ]),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Dashboard(),
                                ));
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                            size: 15,
                            color: Colors.white,
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Notifications",
                          style: GoogleFonts.inter(
                              textStyle: styleSemiBold,
                              fontSize: 17.sp,
                              color: const Color(0xffFFFFFF))),
                    ),
                  ],
                )),
          ]),
          Column(
            children: [
              const SizedBox(height: 18),
              Text('Today',
                  style: GoogleFonts.ibmPlexSans(
                      textStyle: styleRegular,
                      fontSize: 15,
                      color: Color(0xff000000))),
              const SizedBox(height: 10),
              Container(
                height: 188.h,
                width: 330.w,
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(7.r)),
                child: Column(
                  children: [
                    Container(
                      height: 86.h,
                      width: 330.w,
                      decoration: const BoxDecoration(color: Color(0xffFFFFFF)),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 10),
                                child: Container(
                                  height: 50.h,
                                  width: 50.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/Oval.png'))),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Title for Notification',
                                        style: GoogleFonts.ibmPlexSans(
                                            textStyle: styleMedium,
                                            fontSize: 14,
                                            color: const Color(0xff191C24))),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 70),
                                      child: Text('10:45AM',
                                          style: GoogleFonts.ibmPlexSans(
                                              textStyle: styleMedium,
                                              fontSize: 13,
                                              color: const Color(0xff777A8C))),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text('Refrence site about Lorem Ipsum,giving',
                                    style: GoogleFonts.ibmPlexSans(
                                        textStyle: styleMedium,
                                        fontSize: 14,
                                        color: const Color(0xff777A8C))),
                                Text("information on its origin",
                                    style: GoogleFonts.ibmPlexSans(
                                        textStyle: styleMedium,
                                        fontSize: 14,
                                        color: const Color(0xff777A8C)))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 0.5,
                      color: Color(0xff68BFBB),
                    ),
                    Container(
                      height: 86.h,
                      width: 330.w,
                      decoration: const BoxDecoration(color: Color(0xffFFFFFF)),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Container(
                                  height: 50.h,
                                  width: 50.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/Oval.png'))),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Title for Notification',
                                        style: GoogleFonts.ibmPlexSans(
                                            textStyle: styleMedium,
                                            fontSize: 14,
                                            color: const Color(0xff191C24))),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 70),
                                      child: Text('10:45AM',
                                          style: GoogleFonts.ibmPlexSans(
                                              textStyle: styleMedium,
                                              fontSize: 13,
                                              color: const Color(0xff777A8C))),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text('Refrence site about Lorem Ipsum,giving',
                                    style: GoogleFonts.ibmPlexSans(
                                        textStyle: styleMedium,
                                        fontSize: 14,
                                        color: const Color(0xff777A8C))),
                                Text("information on its origin",
                                    style: GoogleFonts.ibmPlexSans(
                                        textStyle: styleMedium,
                                        fontSize: 14,
                                        color: const Color(0xff777A8C)))
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Text('Yesterday',
                  style: GoogleFonts.ibmPlexSans(
                      textStyle: styleRegular,
                      fontSize: 15,
                      color: Color(0xff000000))),
              const SizedBox(height: 10),
              Container(
                height: 86.h,
                width: 330.w,
                decoration: const BoxDecoration(color: Color(0xffFFFFFF)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/Oval.png'))),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Title for Notification',
                                  style: GoogleFonts.ibmPlexSans(
                                      textStyle: styleMedium,
                                      fontSize: 14,
                                      color: const Color(0xff191C24))),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Text('10:45AM',
                                    style: GoogleFonts.ibmPlexSans(
                                        textStyle: styleMedium,
                                        fontSize: 13,
                                        color: const Color(0xff777A8C))),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text('Refrence site about Lorem Ipsum,giving',
                              style: GoogleFonts.ibmPlexSans(
                                  textStyle: styleMedium,
                                  fontSize: 14,
                                  color: const Color(0xff777A8C))),
                          Text("information on its origin",
                              style: GoogleFonts.ibmPlexSans(
                                  textStyle: styleMedium,
                                  fontSize: 14,
                                  color: const Color(0xff777A8C)))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
