import 'package:colonizer_app/screens/4_ForgotPassword.dart';
import 'package:colonizer_app/screens/5_Dashboard.dart';
import 'package:colonizer_app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddLeads1 extends StatefulWidget {
  const AddLeads1({Key? key}) : super(key: key);

  @override
  State<AddLeads1> createState() => _AddLeads1State();
}

class _AddLeads1State extends State<AddLeads1> {
  final styleRegular = const TextStyle(fontWeight: FontWeight.w400);
  final styleMedium = const TextStyle(fontWeight: FontWeight.w500);
  final styleSemiBold = const TextStyle(fontWeight: FontWeight.w600);
  final styleBold = const TextStyle(fontWeight: FontWeight.w700);

  String? selectedValue;
  final List<String> genderItems = [
    'Male',
    'Female',
  ];

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
                  child: Text('Add Leads',
                      style: GoogleFonts.inter(
                          textStyle: styleSemiBold,
                          fontSize: 17.sp,
                          color: const Color(0xffFFFFFF))),
                ),
              ],
            ),
          ),
        ]),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Container(
            height: 560.h,
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
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  children: [
                    const SizedBox(height: 20),
                    formField('Project', 'Project name'),
                    const SizedBox(height: 8),
                    formField('Call Duration', 'Project name'),
                    const SizedBox(height: 8),
                    formField('Name', 'Name'),
                    const SizedBox(height: 8),
                    formField('Phone', 'Phone'),
                    const SizedBox(height: 8),
                    formField('Alternate No', 'Alternate Phone'),
                    const SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(
                            "Contactibility",
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleMedium,
                                fontSize: 14,
                                color: const Color(0xff303030)),
                          ),
                          Text(' *',
                              style: GoogleFonts.ibmPlexSans(
                                  textStyle: styleMedium,
                                  fontSize: 14.26.sp,
                                  color: const Color(0xffF61414)))
                        ]),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 40,
                          width: 300,
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xffFFFFFF),
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                  top: 13.5, bottom: 13.5, left: 15, right: 15),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xffC0BCBC)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffC0BCBC))),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffC0BCBC)),
                              ),
                            ),
                            isExpanded: true,
                            hint: const Text(
                              'Contactibility',
                              style: TextStyle(
                                color: Color(0xffC0BCBC),
                                fontSize: 13,
                                // height: -0.5,
                              ),
                            ),
                            icon: const Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Color(0xff9F9F9F),
                            ),
                            iconSize: 20,
                            itemHeight: 60,
                            items: genderItems
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            validator: (value) {
                              if (value == null) {
                                return 'Please select gender.';
                              }
                            },
                            onChanged: (value) {},
                            onSaved: (value) {
                              selectedValue = value.toString();
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(
                            "Contactibility",
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleMedium,
                                fontSize: 14,
                                color: const Color(0xff303030)),
                          ),
                          Text(' *',
                              style: GoogleFonts.ibmPlexSans(
                                  textStyle: styleMedium,
                                  fontSize: 14.26.sp,
                                  color: const Color(0xffF61414)))
                        ]),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 255,
                              child: DropdownButtonFormField(
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffFFFFFF),
                                  isDense: true,
                                  contentPadding: EdgeInsets.only(
                                      top: 13.5,
                                      bottom: 13.5,
                                      left: 15,
                                      right: 15),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xffC0BCBC)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xffC0BCBC))),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffC0BCBC)),
                                  ),
                                ),
                                isExpanded: true,
                                hint: const Text(
                                  'Contactibility',
                                  style: TextStyle(
                                    color: Color(0xffC0BCBC),
                                    fontSize: 13,
                                    // height: -0.5,
                                  ),
                                ),
                                icon: const Padding(
                                  padding: EdgeInsets.only(bottom: 6),
                                  child: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Color(0xff9F9F9F),
                                  ),
                                ),
                                iconSize: 20,
                                itemHeight: 60,
                                items: genderItems
                                    .map((item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ))
                                    .toList(),
                                validator: (value) {
                                  if (value == null) {
                                    return 'Please select gender.';
                                  }
                                },
                                onChanged: (value) {},
                                onSaved: (value) {
                                  selectedValue = value.toString();
                                },
                              ),
                            ),
                            Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.r),
                                  color: Color(0xff68BFBB)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add,
                                    color: Color(0xffFFFFFF),
                                    size: 15,
                                  )),
                              alignment: Alignment.center,
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    formField('Current Address', 'Current Address'),
                    const SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(
                            "Leavingf Mode",
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: styleMedium,
                                fontSize: 14,
                                color: const Color(0xff303030)),
                          ),
                          Text(' *',
                              style: GoogleFonts.ibmPlexSans(
                                  textStyle: styleMedium,
                                  fontSize: 14.26.sp,
                                  color: const Color(0xffF61414)))
                        ]),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 40,
                          width: 300,
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xffFFFFFF),
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                  top: 13.5, bottom: 13.5, left: 15, right: 15),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xffC0BCBC)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffC0BCBC))),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffC0BCBC)),
                              ),
                            ),
                            isExpanded: true,
                            hint: const Text(
                              'Leaving Mode',
                              style: TextStyle(
                                color: Color(0xffC0BCBC),
                                fontSize: 13,
                                // height: -0.5,
                              ),
                            ),
                            icon: const Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Color(0xff9F9F9F),
                            ),
                            iconSize: 20,
                            itemHeight: 60,
                            items: genderItems
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            validator: (value) {
                              if (value == null) {
                                return 'Please select gender.';
                              }
                            },
                            onChanged: (value) {},
                            onSaved: (value) {
                              selectedValue = value.toString();
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),

                    //Next button
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
                            child: Text('Next',
                                style: GoogleFonts.inter(
                                    textStyle: styleSemiBold,
                                    color: Colors.white)))),
                    const SizedBox(height: 35),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }

  Widget formField(String title, String hinttext) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Text(
            title,
            style: GoogleFonts.ibmPlexSans(
                textStyle: styleMedium,
                fontSize: 14,
                color: const Color(0xff303030)),
          ),
          Text(' *',
              style: GoogleFonts.ibmPlexSans(
                  textStyle: styleMedium,
                  fontSize: 14.26.sp,
                  color: const Color(0xffF61414)))
        ]),
        const SizedBox(height: 8),
        SizedBox(
          height: 40.h,
          child: TextField(
            style:
                GoogleFonts.ibmPlexSans(fontSize: 13.sp, color: Colors.black),
            // autofocus: false,
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xffFFFFFF),
                hintText: '  $hinttext',
                hintStyle: const TextStyle(
                    color: Color(0xffC0BCBC), fontSize: 13, height: 0.5),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffC0BCBC)),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffC0BCBC)),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffC0BCBC)))),
          ),
        ),
      ],
    );
  }
}
