// ignore: file_names
import 'package:colonizer_app/screens/3_LogIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  final style = TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold);
  final style1 = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500);
  final style2 = const TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
    );
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Image.asset(
                      'assets/images/GetStart.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 55,
                      left: 78,
                    ),
                    child: Image.asset(
                      'assets/images/Logo.png',
                      fit: BoxFit.contain,
                      height: 75.h,
                      width: 190.w,
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'One place for all your ',
            style: GoogleFonts.ibmPlexSans(
                textStyle: style, color: const Color(0xff000000)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            'work place ',
            style: GoogleFonts.ibmPlexSans(
                textStyle: style, color: const Color(0xff000000)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            'Tasks,Docs,Goals,and Chat-',
            style: GoogleFonts.ibmPlexSans(
                textStyle: style1, color: const Color(0xff000000)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 3),
          Text(
            'customizalbel to work for everyone',
            style: GoogleFonts.ibmPlexSans(
                textStyle: style1, color: const Color(0xff000000)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 35),
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
                          builder: (context) => const LogInScreen(),
                        ));
                  },
                  child: Text('Get Started',
                      style: GoogleFonts.inter(
                          textStyle: style2, color: Colors.white)))),
        ],
      ),
    );
  }
}
