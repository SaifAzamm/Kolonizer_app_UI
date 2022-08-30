import 'package:colonizer_app/screens/10_ActivityLogs.dart';
import 'package:colonizer_app/screens/11_CreateLog.dart';
import 'package:colonizer_app/screens/12_Profile.dart';
import 'package:colonizer_app/screens/13_Profile2.dart';
import 'package:colonizer_app/screens/14_FAQs.dart';
import 'package:colonizer_app/screens/15_TodaysFollowUp.dart';
import 'package:colonizer_app/screens/16_Notifications.dart';
import 'package:colonizer_app/screens/1_SplashScreen.dart';
import 'package:colonizer_app/screens/2_GetStart.dart';
import 'package:colonizer_app/screens/3_LogIn.dart';
import 'package:colonizer_app/screens/4_ForgotPassword.dart';
import 'package:colonizer_app/screens/5_Dashboard.dart';
import 'package:colonizer_app/screens/6_Leads.dart';
import 'package:colonizer_app/screens/6_LeadsTable.dart';
import 'package:colonizer_app/screens/7_LeadDetails.dart';
import 'package:colonizer_app/screens/8_AddLeads1.dart';
import 'package:colonizer_app/screens/9_AddLeads2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(statusBarColor: Color(0xffFAFAFA)),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            themeMode: ThemeMode.light,
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            // You can use the library anywhere in the app even in theme

            home: child,
          );
        },
        child: const SplashScreen()
        // GetStarted()
        //LogInScreen()
        //    ForgetPassword()
        // Dashboard()
        // Leads()
        //LeadsTable()
        // LeadDetails()
        //AddLeads1()
        // AddLeads2()
        //ActivityLogs()
        // CreateLog()
        //  Profile()
        //Profile2()
        //FAQs()
        //TodayFollowUp()
        //Notifications()
        );
  }
}
