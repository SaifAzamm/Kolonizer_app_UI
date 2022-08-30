// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getwidget/getwidget.dart';

class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
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
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_back_ios_new_outlined,
                                size: 15,
                                color: Colors.white,
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("FAQ's",
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
          const SizedBox(height: 10),
          Column(
            children: const [
              GFAccordion(
                  collapsedTitleBackgroundColor: Color(0xffF9F9FF),
                  expandedTitleBackgroundColor: Color(0xffF9F9FF),
                  contentBackgroundColor: Color(0xffF5F4F8),
                  contentBorderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  collapsedIcon: Icon(
                    Icons.add,
                    size: 18,
                  ),
                  expandedIcon: Icon(
                    Icons.minimize_outlined,
                    size: 18,
                  ),
                  title: 'What is Rise Real Estate?',
                  content:
                      "A true & caring relation Doesn't have to speak loud....."
                      ".!A soft smile is just enough,Because Its not the mouth that speaks,Its the heart that feels...!"),
              GFAccordion(
                  collapsedTitleBackgroundColor: Color(0xffF9F9FF),
                  expandedTitleBackgroundColor: Color(0xffF9F9FF),
                  contentBackgroundColor: Color(0xffF5F4F8),
                  contentBorderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  collapsedIcon: Icon(
                    Icons.add,
                    size: 18,
                  ),
                  expandedIcon: Icon(
                    Icons.minimize_outlined,
                    size: 18,
                  ),
                  title: 'Why choose buy in Rise?',
                  content:
                      "A true & caring relation Doesn't have to speak loud....."
                      ".!A soft smile is just enough,Because Its not the mouth that speaks,Its the heart that feels...!"),
              GFAccordion(
                  collapsedTitleBackgroundColor: Color(0xffF9F9FF),
                  expandedTitleBackgroundColor: Color(0xffF9F9FF),
                  contentBackgroundColor: Color(0xffF5F4F8),
                  contentBorderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  collapsedIcon: Icon(
                    Icons.add,
                    size: 18,
                  ),
                  expandedIcon: Icon(
                    Icons.minimize_outlined,
                    size: 18,
                  ),
                  title: 'What is Safar:',
                  content:
                      "A true & caring relation Doesn't have to speak loud....."
                      ".!A soft smile is just enough,Because Its not the mouth that speaks,Its the heart that feels...!")
            ],
          )
        ],
      ),
    );
  }

  // Widget accordian (String accordianTitle,String content){
  //   return  GFAccordion(
  //                 collapsedTitleBackgroundColor: Color(0xffF9F9FF),
  //                 expandedTitleBackgroundColor: Color(0xffF9F9FF),
  //                 contentBackgroundColor: Color(0xffF5F4F8),
  //                 contentBorderRadius: BorderRadius.only(
  //                     topLeft: Radius.circular(5),
  //                     topRight: Radius.circular(5),
  //                     bottomLeft: Radius.circular(5),
  //                     bottomRight: Radius.circular(5)),
  //                 collapsedIcon: Icon(Icons.add),
  //                 expandedIcon: Icon(Icons.minimize),
  //                 title: Text('saif',style: ,),
  //                 content:
  //                     "A true & caring relation Doesn't have to speak loud....."
  //                     ".!A soft smile is just enough,Because Its not the mouth that speaks,Its the heart that feels...!")
}
