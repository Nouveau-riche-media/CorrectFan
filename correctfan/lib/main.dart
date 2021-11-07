import 'package:correctfan/Controllers/authControllers.dart';
import 'package:correctfan/Controllers/matchesController.dart';
import 'package:correctfan/Screens/Inbox/InboxDetails.dart';
// import 'package:correctfan/Screens/Livescores/Today.dart';
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
// import 'package:correctfan/wrapper.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'Controllers/playerController.dart';
import 'Screens/Livescores/LiveScoreDetail.dart';
import 'constants/ui.dart';

// import 'Screens/news.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialization.then((value) {
    Get.put(AuthController());
    Get.put(TodaysMatchesController());
    Get.put(YesterdayMatchesController());
    Get.put(NextMatchesController());
    Get.put(TomorrowMatchesController());
    Get.put(PlayerController());
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
        
        
        appBarTheme: AppBarTheme(
          backgroundColor:  primary,
          centerTitle: true,
          
        ),
  
        // ChipTheme
        chipTheme: ChipThemeData(
          backgroundColor: blue!,
          selectedColor: white,
          labelStyle: GoogleFonts.inter(
            fontSize: 8,
            color: white
          ),
          
          brightness: Brightness.light,
          disabledColor: lightGrey!,
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          secondarySelectedColor: Color.fromARGB(100, 196, 196, 196),
          secondaryLabelStyle: GoogleFonts.inter(
            // fontSize: text(45, context),
            color: Colors.black
          ),
        ),
  
        // Font Family
        fontFamily: 'Inter',
  
        // TextTheme
      //   textTheme: TextTheme(
            
      ),
  
      home: Splash(),
      // initialRoute: 'on1',
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
