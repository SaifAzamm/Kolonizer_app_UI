import 'package:colonizer_app/screens/5_Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TodayFollowUp extends StatefulWidget {
  const TodayFollowUp({Key? key}) : super(key: key);

  @override
  State<TodayFollowUp> createState() => _TodayFollowUpState();
}

class _TodayFollowUpState extends State<TodayFollowUp> {
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
                      child: Text("Today's follow up",
                          style: GoogleFonts.inter(
                              textStyle: styleSemiBold,
                              fontSize: 17.sp,
                              color: const Color(0xffFFFFFF))),
                    ),
                  ],
                )),
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 160),
              Container(
                  height: 65.h,
                  width: 65.w,
                  decoration: BoxDecoration(
                      color: const Color(0xff68BFBB),
                      shape: BoxShape.circle,
                      boxShadow: [
                        const BoxShadow(
                            spreadRadius: 35,
                            blurRadius: 8,
                            color: Color.fromARGB(255, 226, 239, 238)),
                        BoxShadow(
                            spreadRadius: 15.r,
                            blurRadius: 8.r,
                            color: const Color.fromARGB(209, 151, 217, 214))
                      ]),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      size: 22,
                      color: Colors.white,
                    ),
                  )),
              const SizedBox(
                height: 50,
              ),
              Text("Today's follow up page is",
                  style: GoogleFonts.lato(
                      textStyle: styleMedium,
                      fontSize: 25,
                      color: const Color(0xff252B5C))),
              // SizedBox(height: 5),
              Text('empty',
                  style: GoogleFonts.lato(
                      textStyle: styleExtraBold,
                      fontSize: 25,
                      color: const Color(0xff1F4C6B))),
              SizedBox(height: 15),
              Text('Click add button above to start explosing',
                  style: GoogleFonts.lato(
                      textStyle: styleRegular,
                      fontSize: 12,
                      color: const Color(0xff53587A))),
              Text('and choose your lead',
                  style: GoogleFonts.lato(
                      textStyle: styleRegular,
                      fontSize: 12,
                      color: const Color(0xff53587A)))
            ],
          ),
        ],
      ),
    );
  }
}
