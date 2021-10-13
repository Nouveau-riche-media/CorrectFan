import 'package:correctfan/Screens/LiveScore.dart';
import 'package:correctfan/Screens/Play.dart';
import 'package:correctfan/Screens/inbox.dart';
import 'package:correctfan/Screens/news.dart';
import 'package:correctfan/Screens/stats.dart';
import 'package:correctfan/constants/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _pageIndex = 2;
    
    List<Widget> pageList = <Widget>[
      News(),
      LiveScore(),
      Play(),
      Stats(),
      Inbox()
    ];

    
  void onSelect(int index){
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    Color backgroundColor = Theme.of(context).backgroundColor;
    Color primaryColor = Theme.of(context).primaryColor;
    Color secondaryColor = Theme.of(context).accentColor;


    return Scaffold(
      body: pageList[_pageIndex],

      floatingActionButton: FloatingActionButton(
        
        clipBehavior: Clip.antiAlias,
        backgroundColor: primaryColor,
        onPressed: () {
              setState(() {
                _pageIndex = 2;
              });
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset('assets/images/logo.svg'),
            Text('Play'.toUpperCase(),
              style: GoogleFonts.inter(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: text(40, context),
              ),)
          ],
        ),),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      // Nav Bar
       bottomNavigationBar: BottomAppBar(
         color: Colors.transparent,
         shape: CircularNotchedRectangle(),
         clipBehavior: Clip.antiAlias,
         notchMargin: 8,
         child: BottomNavigationBar(

           unselectedIconTheme: IconThemeData(
             color: Color.fromARGB(60, 255, 255, 255)
             ),

           selectedItemColor: Colors.white,
           selectedLabelStyle: GoogleFonts.inter(
             fontWeight: FontWeight.bold,
           ),

          selectedIconTheme: IconThemeData(color: backgroundColor), 

          backgroundColor: primaryColor,
            currentIndex: _pageIndex,
            type: BottomNavigationBarType.fixed,
            iconSize: 20,
            unselectedFontSize: text(40, context),
            unselectedItemColor: Color.fromARGB(60, 255, 255, 255),
            unselectedLabelStyle: GoogleFonts.inter(),
            
            onTap: onSelect,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.comment), 
                label: 'News'),
             
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer ),
                label: 'Live Score'),  

              BottomNavigationBarItem(
                icon: SizedBox(width: 32,),
                label: ''),

              BottomNavigationBarItem(
                icon: Icon(Icons.leaderboard),
                label: 'Stats'),
             
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Inbox'),
            ],
            ),
       ),
    );
  }
}