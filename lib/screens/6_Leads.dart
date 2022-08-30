import 'package:colonizer_app/screens/5_Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Leads extends StatefulWidget {
  const Leads({Key? key}) : super(key: key);

  @override
  State<Leads> createState() => _LeadsState();
}

class _LeadsState extends State<Leads> {
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
      //App Bar

      body: Column(
        children: [
          Stack(
            children: [
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
                  top: 40,
                  left: 19,
                  bottom: 19,
                  right: 8,
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
                                      builder: (context) => Dashboard(),
                                    ));
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_new_outlined,
                                size: 15,
                                color: Colors.white,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Leads',
                              style: GoogleFonts.inter(
                                  textStyle: styleSemiBold,
                                  fontSize: 18.sp,
                                  color: const Color(0xffFFFFFF))),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.import_export_outlined,
                                color: Color(0xffFFFFFF))),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.file_upload,
                                color: Color(0xffFFFFFF))),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.filter_alt_outlined,
                                color: Color(0xffFFFFFF)))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),

          //Scrolling

          Column(
            children: [
              const SizedBox(height: 14),

              //Search bar

              SizedBox(
                height: 40.h,
                width: 330.w,
                child: TextField(
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 13.sp, color: const Color(0xff000000)),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffFFFFFF),
                      hintText: 'search...',
                      hintStyle: GoogleFonts.ibmPlexSans(
                          textStyle: styleSemiBold,
                          color: const Color(0xffB7C4E0),
                          fontSize: 13.sp,
                          height: 0.5),
                      suffixIcon: const Icon(
                        Icons.search_outlined,
                        color: Color(0xffB7C4E0),
                        size: 16,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFFFFFF)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xffFFFFFF)),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.r),
                          borderSide:
                              const BorderSide(color: Color(0xffFFFFFF)))),
                ),
              ),
              const SizedBox(height: 10),

              //List start
              // leadsDetails(),
              // const SizedBox(height: 15),
              // leadsDetails(),
              // const SizedBox(height: 15),

              Container(
                height: 508.5.h,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffF8FAFB),
                // color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: NotificationListener<OverscrollIndicatorNotification>(
                    onNotification:
                        (OverscrollIndicatorNotification overscroll) {
                      overscroll.disallowGlow();
                      return true;
                    },
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      removeBottom: true,
                      child: ListView(
                        // clipBehavior: Clip.none,
                        children: [
                          SizedBox(height: 15),
                          leadsDetails(),
                          const SizedBox(height: 15),
                          leadsDetails(),
                          const SizedBox(height: 15),
                          leadsDetails(),
                          const SizedBox(height: 15),
                          leadsDetails(),
                          const SizedBox(height: 15),
                          leadsDetails(),
                          const SizedBox(height: 15),
                          leadsDetails(),
                          const SizedBox(height: 15),
                          leadsDetails(),
                          const SizedBox(height: 15),
                          leadsDetails(),
                          const SizedBox(height: 15),
                          leadsDetails(),
                          const SizedBox(height: 15),
                          leadsDetails(),
                          const SizedBox(height: 15),
                          leadsDetails(),
                          // const SizedBox(height: 15),
                          // SizedBox(height: 15)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  //Widgets

  Widget leadsDetails() {
    return Container(
      height: 217.h,
      width: 330.w,
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 228, 232, 234), //color of shadow
              spreadRadius: 3.r, //spread radius
              blurRadius: 4.r, // blur radius
              // offset: Offset(0, 2),
            ),
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
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
                              fontSize: 16.sp,
                              color: const Color(0xff3D3D3D))),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 22.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        color: const Color(0xff68BFBB),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2),
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
                )
              ],
            ),
          ),
          const Divider(
            color: Color(0xffC0BCBC),
            // height: 5,

            thickness: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                const SizedBox(height: 8),
                rowText("Contactability :", "Conversion"),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      "Category :",
                      style: GoogleFonts.ibmPlexSans(
                          textStyle: styleRegular,
                          fontSize: 16,
                          color: const Color(0xff000000)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: Text(
                        "A+(Hot)",
                        style: GoogleFonts.ibmPlexSans(
                            textStyle: styleMedium,
                            fontSize: 16,
                            color: const Color(0xff000000)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      "Status :",
                      style: GoogleFonts.ibmPlexSans(
                          textStyle: styleRegular,
                          fontSize: 16,
                          color: const Color(0xff000000)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: Text(
                        "Call",
                        style: GoogleFonts.ibmPlexSans(
                            textStyle: styleMedium,
                            fontSize: 16,
                            color: const Color(0xff000000)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    listButtons(Icons.remove_red_eye_outlined, "Details",
                        const Color(0xff018BDA)),
                    listButtons(Icons.phone_in_talk_outlined, "Call",
                        const Color(0xff68BFBB)),
                    listButtons(Icons.edit_note_outlined, "Edit",
                        const Color(0xff1F4C6B))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget listButtons(IconData icon, String title, Color boxColor) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 26.h,
        width: 90.w,
        decoration: BoxDecoration(
            color: boxColor, borderRadius: BorderRadius.circular(20.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 15,
              color: const Color(0xffFFFFFF),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                title,
                style: GoogleFonts.ibmPlexSans(
                    textStyle: styleRegular,
                    fontSize: 13.sp,
                    color: const Color(0xffFFFFFF)),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
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
              fontSize: 16,
              color: const Color(0xff3D3D3D)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2),
          child: Text(
            subtitle,
            style: GoogleFonts.ibmPlexSans(
                textStyle: styleMedium,
                fontSize: 16,
                color: const Color(0xff3D3D3D)),
          ),
        ),
      ],
    );
  }
}
