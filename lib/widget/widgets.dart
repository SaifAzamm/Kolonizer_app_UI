import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart';

class appbarWidget extends StatefulWidget {
  const appbarWidget({Key? key}) : super(key: key);

  @override
  State<appbarWidget> createState() => _appbarWidgetState();
}

class _appbarWidgetState extends State<appbarWidget> {
  final styleRegular = const TextStyle(fontWeight: FontWeight.w400);
  final styleMedium = const TextStyle(fontWeight: FontWeight.w500);
  final styleSemiBold = const TextStyle(fontWeight: FontWeight.w600);
  final styleBold = const TextStyle(fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 15,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Leads',
                  style: GoogleFonts.inter(
                      textStyle: styleSemiBold,
                      fontSize: 18.sp,
                      color: const Color(0xffFFFFFF))),
            ),
          ],
        ),
      ),
    ]);
  }
}
