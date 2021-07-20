import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatefulWidget {
  const News({ Key? key }) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {

    
    Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(

      // App Bar
      appBar: AppBar(
        
        centerTitle: true,
        toolbarHeight: 136,
        title: SvgPicture.asset('assets/images/cflettermark.svg',width: 120,),

        
        bottom: PreferredSize(
          preferredSize: Size.fromWidth(120),
          child: Container(
            height: 114,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemBuilder: (x, index) => CircleAvatar(
                  radius: 32,
                  child: Text('A'),
                ),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 12),
                primary: true,
                // physics: BouncingScrollPhysics(parent: ScrollPhysics),
                itemCount: 10,
                ),
            ),
          ),)
        ),

        // Floating Action Button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {},
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset('assets/images/logo.svg'),
            Text('Play'.toUpperCase(),
              style: GoogleFonts.inter(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize:12
              ),)
          ],
        ),),


        // Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
          currentIndex: 0,
          type: BottomNavigationBarType.shifting,
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

          // feed
      body: ListView.builder(
        itemBuilder: (x, index) => NewsFeed(),
        itemCount: 4,
        )
      );
  }
}