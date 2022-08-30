import 'package:colonizer_app/screens/12_Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile2 extends StatefulWidget {
  const Profile2({Key? key}) : super(key: key);

  @override
  State<Profile2> createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
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
                                      builder: (context) => const Profile(),
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
                          child: Text('Profile',
                              style: GoogleFonts.inter(
                                  textStyle: styleSemiBold,
                                  fontSize: 17.sp,
                                  color: const Color(0xffFFFFFF))),
                        ),
                      ],
                    ),
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
                              onPressed: () {},
                              icon: const Icon(
                                Icons.settings_outlined,
                                size: 15,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    )
                  ],
                )),
          ]),
          const SizedBox(height: 20),
          Container(
            height: 480.h,
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
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Stack(
                    children: [
                      Container(
                        height: 100.h,
                        width: 100.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/michael.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60, left: 80),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('assets/images/penLogo.png'),
                            fit: BoxFit.contain,
                            height: 30,
                            width: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleMedium,
                                fontSize: 14,
                                color: const Color(0xff303030)),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: 40.h,
                            child: TextField(
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize: 13.sp, color: Colors.black),
                              // autofocus: false,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffFFFFFF),
                                  hintText: 'Michael Smith',
                                  hintStyle: TextStyle(
                                      color: Color(0xffC0BCBC),
                                      fontSize: 13,
                                      height: 0.5),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffC0BCBC)),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xffC0BCBC)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xffC0BCBC)))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleMedium,
                                fontSize: 14,
                                color: const Color(0xff303030)),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: 40.h,
                            child: TextField(
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize: 13.sp, color: Colors.black),
                              // autofocus: false,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffFFFFFF),
                                  hintText: 'alex@gmail.com',
                                  hintStyle: TextStyle(
                                      color: Color(0xffC0BCBC),
                                      fontSize: 13,
                                      height: 0.5),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffC0BCBC)),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xffC0BCBC)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xffC0BCBC)))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone no',
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleMedium,
                                fontSize: 14,
                                color: const Color(0xff303030)),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: 40.h,
                            child: TextField(
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize: 13.sp, color: Colors.black),
                              // autofocus: false,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffFFFFFF),
                                  hintText: '+91 9090909090',
                                  hintStyle: TextStyle(
                                      color: Color(0xffC0BCBC),
                                      fontSize: 13,
                                      height: 0.5),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffC0BCBC)),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xffC0BCBC)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xffC0BCBC)))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 65),
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
                              onPressed: () {},
                              child: Text('Update',
                                  style: GoogleFonts.inter(
                                      textStyle: styleBold,
                                      color: Colors.white)))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
