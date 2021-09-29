import 'package:correctfan/Controllers/authControllers.dart';
import 'package:correctfan/Screens/Inbox/InboxDetails.dart';
import 'package:correctfan/Screens/News/NewsDetail.dart';
import 'package:correctfan/Screens/Play.dart';
import 'package:correctfan/Screens/Drawer/Profile.dart';
import 'package:correctfan/Screens/follow.dart';
import 'package:correctfan/Screens/Onboarding/onboarding1.dart';
import 'package:correctfan/Screens/Onboarding/onboarding2.dart';
import 'package:correctfan/Screens/Onboarding/onboarding3.dart';
import 'package:correctfan/Screens/Onboarding/setFavourites.dart';
import 'package:correctfan/Screens/Onboarding/signIn.dart';
import 'package:correctfan/Screens/Onboarding/signUp.dart';
import 'package:correctfan/Screens/Onboarding/splash.dart';
import 'package:correctfan/constants/firebase.dart';
import 'package:correctfan/main/mainPage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'Screens/Livescores/LiveScoreDetail.dart';

// import 'Screens/news.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialization.then((value) {
    Get.put(AuthController());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.latestStyle;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,

      ),
    );
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        
        // Colors
        backgroundColor: Color(0xFF003E75),
        primaryColor: Color(0xFF092C4C),
        accentColor: Color(0xFFF2994A),
        appBarTheme: AppBarTheme(
          backgroundColor:  Color(0xFF092C4C),
          centerTitle: true,
          
        ),
  
        // ChipTheme
        chipTheme: ChipThemeData(
          backgroundColor: Theme.of(context).primaryColor,
          selectedColor: Colors.white,
          labelStyle: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 12
          ),
          brightness: Brightness.light,
          disabledColor: Color.fromARGB(30, 196, 196, 196),
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
          secondarySelectedColor: Color.fromARGB(100, 196, 196, 196),
          secondaryLabelStyle: GoogleFonts.inter(
            fontSize: 12,
            color: Colors.black
          ),
          ),
  
        // Font Family
        fontFamily: 'Inter',
  
        // TextTheme
        textTheme: TextTheme(
            headline5: GoogleFonts.inter(
              textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  // letterSpacing: ,
                  letterSpacing: 5,
                  fontSize: 24,
                  height: 1.1),
            ),
            headline4: GoogleFonts.inter(
              textStyle: TextStyle(fontSize: 32, height: 1.1),
            ),
            headline3: GoogleFonts.inter(
              textStyle: TextStyle(fontSize: 40, height: 1.1),
            ),
            headline6: GoogleFonts.inter(
              textStyle: TextStyle(
                  fontSize: 20, color: Colors.white, height: 1.1),
            ),
            bodyText1: GoogleFonts.inter(
              textStyle: TextStyle(
                  fontSize: 12, color: Colors.black, height: 1.1),
            ),
            caption: GoogleFonts.inter(
                fontWeight: FontWeight.w800,
                fontSize: 12,
                color: Color(0xFF007BEA),
                shadows: [
                  BoxShadow(
                      color: Color.fromARGB(25, 0, 0, 0),
                      offset: Offset(0, 4),
                      blurRadius: 4)
                ]),
            subtitle1:
                GoogleFonts.inter(color: Colors.white, fontSize: 16),
            subtitle2: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ),
  
      home: SignUp(),
      routes: {
        'yeyu': (context) => Splash(),
        'on1': (context) => Onboarding1(),
        'on2': (context) => Onboarding2(),
        'on3': (context) => Onboarding3(),
        'signIn': (context) => SignIn(),
        'signUp': (context) => SignUp(),
        'favourites': (context) => SetFavourite(),
        'follow': (context) => Follow(),
        'Play': (context) => Play(),
        'Profile': (context) => Profile(),
        'main': (context) => MainPage(),
        'News Detail': (context) => NewsDetail(),
        'LiveScoreDetails': (context) => LiveScoreDetail(),
        'InboxDetails': (context) => InboxDetails()
      });
          
  }
}
