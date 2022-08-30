import 'package:colonizer_app/screens/3_LogIn.dart';
import 'package:colonizer_app/screens/5_Dashboard.dart';
import 'package:colonizer_app/screens/7_LeadDetails.dart';
import 'package:colonizer_app/screens/8_AddLeads1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LeadsTable extends StatefulWidget {
  const LeadsTable({Key? key}) : super(key: key);

  @override
  State<LeadsTable> createState() => _LeadsTableState();
}

class _LeadsTableState extends State<LeadsTable> {
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
      floatingActionButton: SizedBox(
        height: 43.h,
        width: 43.h,
        child: FloatingActionButton(
          backgroundColor: Color(0xff68BFBB),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddLeads1(),
                ));
          },
          child: const Icon(Icons.add),
        ),
      ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                                      color:
                                          const Color.fromARGB(80, 100, 99, 99))
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
                          child: Text("Leads",
                              style: GoogleFonts.inter(
                                  textStyle: styleSemiBold,
                                  fontSize: 17.sp,
                                  color: const Color(0xffFFFFFF))),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.search,
                      size: 35,
                      color: Color(0xffFFFFFF),
                    )
                  ],
                )),
          ]),
          const SizedBox(height: 10),
          // Container(
          //   height: 26.h,
          //   width: 80.w,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(12.r),
          //     color: Color(0xff68BFBB),
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 30, top: 5),
          //     child: Text(
          //       'All',
          //       style: GoogleFonts.ibmPlexSans(
          //           textStyle: styleSemiBold,
          //           fontSize: 13,
          //           color: Color(0xffFFFFFF)),
          //     ),
          //   ),
          // )
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      height: 26.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: const Color(0xff68BFBB),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Center(
                          child: Text(
                            'All',
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleSemiBold,
                                fontSize: 11,
                                color: const Color(0xffFFFFFF)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      height: 26.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: const Color(0xffFFFFFF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Center(
                          child: Text(
                            'A+(Hot)',
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleSemiBold,
                                fontSize: 11,
                                color: const Color(0xff000000)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      height: 26.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: const Color(0xffFFFFFF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Center(
                          child: Text(
                            'A+(Warm)',
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleSemiBold,
                                fontSize: 11,
                                color: const Color(0xff000000)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      height: 26.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: const Color(0xffFFFFFF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Center(
                          child: Text(
                            'B+(Cold)',
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleSemiBold,
                                fontSize: 11,
                                color: const Color(0xff000000)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 440,
            width: 330,
            decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 34.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r)),
                      color: const Color(0xff68BFBB)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Name",
                          style: GoogleFonts.ibmPlexSans(
                              textStyle: styleMedium,
                              fontSize: 14.sp,
                              color: const Color(0xffFFFFFF)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 49),
                        child: Text(
                          "Contactability",
                          style: GoogleFonts.ibmPlexSans(
                              textStyle: styleMedium,
                              fontSize: 14.sp,
                              color: const Color(0xffFFFFFF)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 38),
                        child: Text(
                          "Status",
                          style: GoogleFonts.ibmPlexSans(
                              textStyle: styleMedium,
                              fontSize: 14.sp,
                              color: const Color(0xffFFFFFF)),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 7),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LeadDetails(),
                        ));
                  },
                  child: leadsContainer(),
                ),
                const SizedBox(height: 8),
                leadsContainer(),
                const SizedBox(height: 8),
                leadsContainer(),
                const SizedBox(height: 8),
                leadsContainer(),
                const SizedBox(height: 8),
                leadsContainer(),
                const SizedBox(height: 8),
                leadsContainer(),
                const SizedBox(height: 8),
                leadsContainer(),
                const SizedBox(height: 8),
                leadsContainer(),
                const SizedBox(height: 8),
                leadsContainer(),
                const SizedBox(height: 8),
                leadsContainer()
              ],
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: circle('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: circle('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: circle('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: circle('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: circle('5'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: circle('6'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: circle('7'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: circle('8'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: circle('9'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: circle('10'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget leadsContainer() {
    return Container(
      height: 30.h,
      width: 312.w,
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
                // spreadRadius: 1.r,
                blurRadius: 10.r,
                color: const Color.fromARGB(80, 155, 153, 153)),
          ],
          borderRadius: BorderRadius.circular(4.r)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Mr.Brandon',
              style: GoogleFonts.ibmPlexSans(
                  textStyle: styleRegular,
                  fontSize: 12.sp,
                  color: const Color(0xff000000)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Conversion',
              style: GoogleFonts.ibmPlexSans(
                  textStyle: styleRegular,
                  fontSize: 12.sp,
                  color: const Color(0xff3D3D3D)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 66),
            child: Text(
              'Call',
              style: GoogleFonts.ibmPlexSans(
                  textStyle: styleRegular,
                  fontSize: 12.sp,
                  color: const Color(0xff000000)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 43),
            child: Icon(
              Icons.phone_in_talk_outlined,
              color: Color(0xff68BFBB),
              size: 17,
            ),
          )
        ],
      ),
    );
  }

  Widget circle(String number) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 30.w,
        width: 30.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffFFFFFF),
        ),
        child: Center(
          child: Text(
            number,
            style: GoogleFonts.inter(
                textStyle: styleRegular,
                fontSize: 13.sp,
                color: const Color(0xff4E4E53)),
          ),
        ),
      ),
    );
  }
}
