import 'package:colonizer_app/screens/7_LeadDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityLogs extends StatefulWidget {
  const ActivityLogs({Key? key}) : super(key: key);

  @override
  State<ActivityLogs> createState() => _ActivityLogsState();
}

class _ActivityLogsState extends State<ActivityLogs> {
  final styleRegular = const TextStyle(fontWeight: FontWeight.w400);
  final styleMedium = const TextStyle(fontWeight: FontWeight.w500);
  final styleSemiBold = const TextStyle(fontWeight: FontWeight.w600);
  final styleBold = const TextStyle(fontWeight: FontWeight.w700);

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
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LeadDetails(),
                          ));
                    },
                    child: Container(
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
                      child: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Activity Logs',
                        style: GoogleFonts.inter(
                            textStyle: styleSemiBold,
                            fontSize: 17.sp,
                            color: const Color(0xffFFFFFF))),
                  ),
                ],
              ),
            ),
          ]),
          const SizedBox(height: 20),
          Container(
            height: 137.h,
            width: 330.w,
            decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(
                        255, 228, 232, 234), //color of shadow
                    spreadRadius: 3.r, //spread radius
                    blurRadius: 4.r, // blur radius
                    // offset: Offset(0, 2),
                  ),
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.person_outline,
                            color: Color(0xff68BFBB),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text('Devid Smith',
                                style: GoogleFonts.ibmPlexSans(
                                    textStyle: styleMedium,
                                    fontSize: 15.sp,
                                    color: const Color(0xff3D3D3D))),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Follow Up Date:",
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleRegular,
                                fontSize: 13.sp,
                                color: const Color(0xff000000)),
                          ),
                          Text(
                            "28-06-2022",
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleRegular,
                                fontSize: 13.sp,
                                color: const Color(0xff000000)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xffC0BCBC),
                  height: 17,
                  thickness: 0.5,
                  endIndent: 0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Epsum decode alexa.',
                        style: GoogleFonts.ibmPlexSans(
                          textStyle: styleRegular,
                          fontSize: 14.sp,
                          color: const Color(0xff3D3D3D),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xffC0BCBC),
                  height: 17,
                  thickness: 0.5,
                  endIndent: 0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "2022-06-22",
                        style: GoogleFonts.ibmPlexSans(
                            textStyle: styleRegular,
                            fontSize: 13.sp,
                            color: const Color(0xff000000)),
                      ),
                      Text(
                        "  10:11:38.000Z",
                        style: GoogleFonts.ibmPlexSans(
                            textStyle: styleRegular,
                            fontSize: 13.sp,
                            color: const Color(0xff000000)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 137.h,
            width: 330.w,
            decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(
                        255, 228, 232, 234), //color of shadow
                    spreadRadius: 3.r, //spread radius
                    blurRadius: 4.r, // blur radius
                    // offset: Offset(0, 2),
                  ),
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.person_outline,
                            color: Color(0xff68BFBB),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text('Devid Smith',
                                style: GoogleFonts.ibmPlexSans(
                                    textStyle: styleMedium,
                                    fontSize: 15.sp,
                                    color: const Color(0xff3D3D3D))),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Follow Up Date:",
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleRegular,
                                fontSize: 13.sp,
                                color: const Color(0xff000000)),
                          ),
                          Text(
                            "28-06-2022",
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleRegular,
                                fontSize: 13.sp,
                                color: const Color(0xff000000)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xffC0BCBC),
                  height: 17,
                  thickness: 0.5,
                  endIndent: 0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Epsum decode alexa.',
                        style: GoogleFonts.ibmPlexSans(
                          textStyle: styleRegular,
                          fontSize: 14.sp,
                          color: const Color(0xff3D3D3D),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xffC0BCBC),
                  height: 17,
                  thickness: 0.5,
                  endIndent: 0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "2022-06-22",
                        style: GoogleFonts.ibmPlexSans(
                            textStyle: styleRegular,
                            fontSize: 13.sp,
                            color: const Color(0xff000000)),
                      ),
                      Text(
                        "  10:11:38.000Z",
                        style: GoogleFonts.ibmPlexSans(
                            textStyle: styleRegular,
                            fontSize: 13.sp,
                            color: const Color(0xff000000)),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
