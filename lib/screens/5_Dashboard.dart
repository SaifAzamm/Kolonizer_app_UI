import 'package:colonizer_app/screens/12_Profile.dart';
import 'package:colonizer_app/screens/15_TodaysFollowUp.dart';
import 'package:colonizer_app/screens/16_Notifications.dart';
import 'package:colonizer_app/screens/6_Leads.dart';
import 'package:colonizer_app/screens/6_LeadsTable.dart';
import 'package:colonizer_app/screens/8_AddLeads1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final styleRegular = const TextStyle(fontWeight: FontWeight.w400);
  final styleMedium = const TextStyle(fontWeight: FontWeight.w500);
  final styleSemiBold = const TextStyle(fontWeight: FontWeight.w600);
  final styleBold = const TextStyle(fontWeight: FontWeight.w700);

  Map<String, double> dataMap = {
    "Today's Follow Up": 4,
    "Uncalled Leads": 1,
    "Active Leads": 1,
    "Deactive Leads": 0.5,
  };
  List<Color> colorList = [
    const Color(0xff32CAEC),
    const Color(0xff68BFBB),
    const Color(0xff2CC33B),
    const Color(0xff000000),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color(0xffFAFAFA)),
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 64),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ));
                          },
                          child: Container(
                            height: 60.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 4.w, color: const Color(0xff68BFBB)),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/michael.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Hello',
                                    style: GoogleFonts.ibmPlexSans(
                                        textStyle: styleRegular,
                                        fontSize: 16.sp,
                                        color: const Color(0xff0C1523)),
                                  ),
                                  Text(
                                    'Peter',
                                    style: GoogleFonts.ibmPlexSans(
                                        textStyle: styleBold,
                                        fontSize: 16.sp,
                                        color: const Color(0xff0C1523)),
                                  )
                                ],
                              ),
                              Text(
                                "Let's find your home",
                                style: GoogleFonts.ibmPlexSans(
                                    textStyle: styleRegular,
                                    fontSize: 12.sp,
                                    color: const Color(0xff636E7E)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Notifications(),
                            ));
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 1.5.w, color: const Color(0xff68BFBB)),
                        ),
                        child: const Icon(Icons.notifications_outlined),
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 15),

              //Search bar
              SizedBox(
                height: 40.h,
                child: TextField(
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 13.sp, color: const Color(0xff000000)),
                  // autofocus: false,
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
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              const BorderSide(color: Color(0xffFFFFFF)))),
                ),
              ),
              const SizedBox(height: 15),
              Text('Dashbord for Leads',
                  style: GoogleFonts.ibmPlexSans(
                      textStyle: styleMedium,
                      color: const Color(
                        0xff000000,
                      ),
                      fontSize: 16.sp)),

              const SizedBox(height: 20),

              //Legends pie
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 12.h,
                            width: 12.w,
                            color: const Color(0xff32CAEC),
                          ),
                          Text("   Today's Follow Up",
                              style: GoogleFonts.inter(
                                  textStyle: styleRegular,
                                  fontSize: 12.sp,
                                  color: const Color(0xff000000)))
                        ],
                      ),
                      Row(
                        children: [
                          Text("Active Leads   ",
                              style: GoogleFonts.inter(
                                  textStyle: styleRegular,
                                  fontSize: 12.sp,
                                  color: const Color(0xff000000))),
                          Container(
                            height: 12.h,
                            width: 12.w,
                            color: const Color(0xff2CC33B),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 12.h,
                            width: 12.w,
                            color: const Color(0xff68BFBB),
                          ),
                          Text("   Uncalled Leads",
                              style: GoogleFonts.inter(
                                  textStyle: styleRegular,
                                  fontSize: 12.sp,
                                  color: const Color(0xff000000)))
                        ],
                      ),
                      Row(
                        children: [
                          Text("Deactive Leads   ",
                              style: GoogleFonts.inter(
                                  textStyle: styleRegular,
                                  fontSize: 12.sp,
                                  color: const Color(0xff000000))),
                          Container(
                            height: 12.h,
                            width: 12.w,
                            color: const Color(0xff000000),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 40),
              //Pie chart
              Stack(
                children: [
                  PieChart(
                    legendOptions: LegendOptions(
                      showLegends: false,
                      legendShape: BoxShape.rectangle,
                      legendTextStyle: GoogleFonts.inter(
                        textStyle: styleRegular,
                        fontSize: 12.sp,
                        color: const Color(0xff000000),
                      ),
                      legendPosition: LegendPosition.top,
                      showLegendsInRow: true,
                    ),
                    chartRadius: 230.r,
                    chartType: ChartType.disc,
                    dataMap: dataMap,
                    colorList: colorList,
                    chartValuesOptions:
                        const ChartValuesOptions(showChartValues: false),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 51, left: 95),
                    child: Container(
                      height: 140.h,
                      width: 140.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffFFFFFF)),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LeadsTable(),
                          ));
                    },
                    child: newWidget(
                        'assets/images/greenCircle.png', 'Active Leads'),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: newWidget(
                        'assets/images/blackCircle.png', 'Deactive Leads'),
                  ),
                  // newWidget('assets/images/blackCircle.png', 'Deactive Leads'),
                ],
              ),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  newWidget('assets/images/redCircle.png', "Uncalled Leads"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TodayFollowUp(),
                          ));
                    },
                    child: newWidget(
                        'assets/images/blue circle.png', "Today's Follow up"),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget newWidget(String imageName, String leadsText) {
    return Container(
      height: 157.h,
      width: 157.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffFFFFFF),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, right: 40, left: 40),
            child: Image.asset('$imageName'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 117),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                '$leadsText',
                style: GoogleFonts.ibmPlexSans(
                    textStyle: styleMedium,
                    fontSize: 14.sp,
                    color: const Color(0xff000000)),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
