import 'package:colonizer_app/screens/13_Profile2.dart';
import 'package:colonizer_app/screens/5_Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        SizedBox(height: 25),
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
                  backgroundImage: AssetImage('assets/images/michael.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 80),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile2(),
                        ));
                  },
                  child: Image(
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
        const SizedBox(height: 5),
        Text(
          'John Smith',
          style: GoogleFonts.nunito(
              textStyle: styleBold,
              color: const Color(0xff000000),
              fontSize: 17.sp),
        ),
        const SizedBox(height: 5),
        Text(
          '+91 9090909090',
          style: GoogleFonts.nunito(
              textStyle: styleRegular,
              color: const Color(0xff000000),
              fontSize: 16.sp),
        ),
        const SizedBox(height: 15),
        Container(
            height: 40.h,
            width: 330.w,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 241, 246, 246)),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Text(
                'Accounts settings',
                style: GoogleFonts.inter(
                    textStyle: styleBold,
                    color: const Color(0xff68BFBB),
                    fontSize: 15.sp),
              ),
            )),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.lock_outline,
                        size: 20,
                        color: Color(0xffBDC2C5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Change Password",
                          style: GoogleFonts.ibmPlexSans(
                              textStyle: styleRegular,
                              color: Color(0xff4D4D4D),
                              fontSize: 14),
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xff191C24),
                    size: 12,
                  )
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.notifications_outlined,
                        size: 20,
                        color: Color(0xffBDC2C5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Notifications",
                          style: GoogleFonts.ibmPlexSans(
                              textStyle: styleRegular,
                              color: const Color(0xff4D4D4D),
                              fontSize: 14),
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.toggle_on_outlined,
                    color: Color(0xff253339),
                    size: 40,
                  )
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Icon(
                    Icons.settings_outlined,
                    size: 20,
                    color: Color(0xffBDC2C5),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "About",
                      style: GoogleFonts.ibmPlexSans(
                          textStyle: styleRegular,
                          color: const Color(0xff4D4D4D),
                          fontSize: 14),
                    ),
                  )
                ],
              ),
              SizedBox(height: 22),
              Row(
                children: [
                  const Icon(
                    Icons.note_outlined,
                    size: 20,
                    color: Color(0xffBDC2C5),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Privacy Policy",
                      style: GoogleFonts.ibmPlexSans(
                          textStyle: styleRegular,
                          color: const Color(0xff4D4D4D),
                          fontSize: 14),
                    ),
                  )
                ],
              ),
              SizedBox(height: 22),
              Row(
                children: [
                  const Icon(
                    Icons.shield_outlined,
                    size: 20,
                    color: Color(0xffBDC2C5),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Terms & Conditions",
                      style: GoogleFonts.ibmPlexSans(
                          textStyle: styleRegular,
                          color: const Color(0xff4D4D4D),
                          fontSize: 14),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        Container(
          height: 40.h,
          width: 330.w,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.exit_to_app_outlined,
                color: Color(0xffFFFFFF),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Sign Out',
                  style: GoogleFonts.nunito(
                      textStyle: styleBold,
                      color: Color(0xffFFFFFF),
                      fontSize: 14),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
