import 'package:correctfan/Screens/LiveScore.dart';
import 'package:correctfan/Screens/inbox.dart';
import 'package:correctfan/Screens/news.dart';
import 'package:correctfan/Screens/stats.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    Color backgroundColor = Theme.of(context).backgroundColor;
    Color primaryColor = Theme.of(context).primaryColor;

    int pageIndex = 0;
    List<Widget>pageList = [
      News(),
      LiveScore(),
      Stats(),
      Inbox()
    ];


    return Scaffold(
      body: pageList[pageIndex], 

       bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          iconSize: 16,
          unselectedLabelStyle: GoogleFonts.inter(
            fontSize: 12,
            color: Colors.white,

          ),
          onTap: (value) {
            setState(() {
              pageIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.comment),
              label: 'News'),
      
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_basketball),
              label: 'Live Score'),
      
            BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard),
              label: 'Stats'),
      
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Inbox'),
          ],
          ),
    );
  }
}