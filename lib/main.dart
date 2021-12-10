import 'package:all_india_mocktest/pages/auth/register_page.dart';
import 'package:all_india_mocktest/pages/auth/signin_page.dart';
import 'package:all_india_mocktest/pages/auth/signup_page.dart';
import 'package:all_india_mocktest/pages/drawer/about_us_page.dart';
import 'package:all_india_mocktest/pages/drawer/contribution_page.dart';
import 'package:all_india_mocktest/pages/drawer/feedback_page.dart';
import 'package:all_india_mocktest/pages/drawer/general_info_page.dart';
import 'package:all_india_mocktest/pages/drawer/leader_ship_board_page.dart';
import 'package:all_india_mocktest/pages/drawer/my_exams_info_page.dart';
import 'package:all_india_mocktest/pages/drawer/privacy_page.dart';
import 'package:all_india_mocktest/pages/drawer/profile_page.dart';
import 'package:all_india_mocktest/pages/drawer/settings_page.dart';
import 'package:all_india_mocktest/pages/exams_info/completed_exams_page.dart';
import 'package:all_india_mocktest/pages/exams_info/my_preparation_page.dart';
import 'package:all_india_mocktest/pages/exams_info/overall_performance_page.dart';
import 'package:all_india_mocktest/pages/exams_info/upcomming_exams_page.dart';
import 'package:all_india_mocktest/pages/exams_info/where_to_improve_page.dart';
import 'package:all_india_mocktest/pages/home/attempt_exam_page.dart';
import 'package:all_india_mocktest/pages/home/exam_page.dart';
import 'package:all_india_mocktest/pages/home/exam_registration_page.dart';
import 'package:all_india_mocktest/pages/home/final_answers_reveal_page.dart';
import 'package:all_india_mocktest/pages/home/home_page.dart';
import 'package:all_india_mocktest/pages/home/notifications_page.dart';
import 'package:all_india_mocktest/pages/home/upcomming_tests_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All India Mock Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
        ),
      ).copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        SigninPage.routeName: (_) => SigninPage(),
        SignupPage.routeName: (_) => SignupPage(),
        RegistePage.routeName: (_) => RegistePage(),
        HomePage.routeName: (_) => HomePage(),
        ProfilePage.routeName: (_) => ProfilePage(),
        GeneralInfoPage.routeName: (_) => GeneralInfoPage(),
        MyExamsInfoPage.routeName: (_) => MyExamsInfoPage(),
        CompletedExamsPage.routeName: (_) => CompletedExamsPage(),
        WhereToImprovePage.routeName: (_) => WhereToImprovePage(),
        OverallPerformancePage.routeName: (_) => OverallPerformancePage(),
        UpcommingExamsPage.routeName: (_) => UpcommingExamsPage(),
        MyPreparationPage.routeName: (_) => MyPreparationPage(),
        PrivacyPage.routeName: (_) => PrivacyPage(),
        LeaderShipBoradPage.routeName: (_) => LeaderShipBoradPage(),
        AboutUs.routeName: (_) => AboutUs(),
        SettingsPage.routeName: (_) => SettingsPage(),
        FeedbackPage.routeName: (_) => FeedbackPage(),
        ContributionPage.routeName: (_) => ContributionPage(),
        UpcommingTestsPage.routeName: (_) => UpcommingTestsPage(),
        ExamPage.routeName: (_) => ExamPage(),
        ExamRegistrationPage.routeName: (_) => ExamRegistrationPage(),
        AttemptExamPage.routeName: (_) => AttemptExamPage(),
        FinalAnswersRevelaPage.routeName: (_) => FinalAnswersRevelaPage(),
        NotificationsPage.routeName: (_) => NotificationsPage(),
      },
      home: SigninPage(),
    );
  }
}
