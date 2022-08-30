import 'package:colonizer_app/screens/10_ActivityLogs.dart';
import 'package:colonizer_app/screens/6_LeadsTable.dart';
import 'package:colonizer_app/screens/8_AddLeads1.dart';
import 'package:colonizer_app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LeadDetails extends StatefulWidget {
  const LeadDetails({Key? key}) : super(key: key);

  @override
  State<LeadDetails> createState() => _LeadDetailsState();
}

class _LeadDetailsState extends State<LeadDetails> {
  final styleRegular = const TextStyle(fontWeight: FontWeight.w400);
  final styleMedium = const TextStyle(fontWeight: FontWeight.w500);
  final styleSemiBold = const TextStyle(fontWeight: FontWeight.w600);
  final styleBold = const TextStyle(fontWeight: FontWeight.w700);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
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
                            builder: (context) => LeadsTable(),
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
                    child: Text('Leads Details',
                        style: GoogleFonts.inter(
                            textStyle: styleSemiBold,
                            fontSize: 17.sp,
                            color: const Color(0xffFFFFFF))),
                  ),
                ],
              ),
            ),
          ]),
          Container(
            height: 591.h,
            width: 361.w,
            decoration: BoxDecoration(color: Color(0xffFFFFFF)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 15, left: 15, top: 30),
                    child: Container(
                      height: 620.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(
                                  255, 228, 232, 234), //color of shadow
                              spreadRadius: 3.r, //spread radius
                              blurRadius: 4.r, // blur radius
                              // offset: Offset(0, 2),
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
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
                                                color:
                                                    const Color(0xff3D3D3D))),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      height: 22.h,
                                      width: 90.w,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff68BFBB),
                                          borderRadius:
                                              BorderRadius.circular(20.r)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          top: 3,
                                        ),
                                        child: Text(
                                          'Interested',
                                          style: GoogleFonts.ibmPlexSans(
                                              textStyle: styleRegular,
                                              fontSize: 13.sp,
                                              color: const Color(0xffFFFFFF)),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: rowText("Mobile no :", "+91 7869898989"),
                            ),
                            const Divider(
                              color: Color(0xffC0BCBC),
                              // height: 5,

                              thickness: 0.5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 15, right: 15),
                              child: Column(
                                children: [
                                  details("Call Duration:", "00:01:04"),
                                  SizedBox(height: 13),
                                  details("Alternative No:", "N/A"),
                                  SizedBox(height: 13),
                                  details("Call Date:", "22-06-2022 10:11:38"),
                                  SizedBox(height: 13),
                                  details("Area of Interest:", "Unique sizes"),
                                  SizedBox(height: 13),
                                  details("Buying Purpose:", "Investment"),
                                  SizedBox(height: 13),
                                  details("Budget:", "No"),
                                  SizedBox(height: 13),
                                  details("Living Mode:", "Family Property"),
                                  SizedBox(height: 13),
                                  details("Lead Source:", "Others"),
                                  SizedBox(height: 13),
                                  details(
                                      "Current Location:", "Bared road Basoda"),
                                  SizedBox(height: 13),
                                  details("Expected Visit Date:", "N/A"),
                                  SizedBox(height: 13),
                                  details("Follow Up Date:", "28-06-2022"),
                                  SizedBox(height: 13),
                                  details("Living Mode:", "Family Property"),
                                  SizedBox(height: 10),
                                  details("Project:", "Dream City Ganj Basoda"),
                                  SizedBox(height: 10),
                                  details("Required Plot Size:", "2000 sqft"),
                                  SizedBox(height: 10),
                                  details("CRE:", "Aayush Soni"),
                                  SizedBox(height: 10),
                                  details("Sales Executive", "Aayush Soni"),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            height: 25.h,
                                            width: 25.w,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff68BFBB)),
                                            child: const Icon(
                                              Icons.check,
                                              size: 14,
                                              color: Color(0xffFFFFFF),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const ActivityLogs(),
                                                  ));
                                            },
                                            child: Container(
                                              height: 22.h,
                                              width: 90.w,
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xff68BFBB),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.r)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 3,
                                                ),
                                                child: Text(
                                                  'Activity Log',
                                                  style:
                                                      GoogleFonts.ibmPlexSans(
                                                          textStyle:
                                                              styleRegular,
                                                          fontSize: 13.sp,
                                                          color: const Color(
                                                              0xffFFFFFF)),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 45.h,
                          width: 45.w,
                          child: FloatingActionButton(
                            backgroundColor: const Color(0xff68BFBB),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AddLeads1(),
                                  ));
                            },
                            child: const Icon(
                              Icons.add,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget rowText(String title, String subtitle) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.ibmPlexSans(
              textStyle: styleRegular,
              fontSize: 15,
              color: const Color(0xff3D3D3D)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2),
          child: Text(
            subtitle,
            style: GoogleFonts.ibmPlexSans(
                textStyle: styleMedium,
                fontSize: 15,
                color: const Color(0xff3D3D3D)),
          ),
        ),
      ],
    );
  }

  Widget details(String title, String answer) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.inter(
              textStyle: styleRegular,
              fontSize: 14,
              color: const Color(0xff000000)),
        ),
        Text(
          answer,
          style: GoogleFonts.inter(
              textStyle: styleMedium,
              fontSize: 13,
              color: const Color(0xff000000)),
        )
      ],
    );
  }
}
