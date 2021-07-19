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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.chevron_left_rounded),),
        centerTitle: true,
        toolbarHeight: 120,
        title: SvgPicture.asset('assets/images/cflettermark.svg',width: 120,),
        // bottom: ,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(16),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            alignment: Alignment.centerLeft,
            child: Text('Follow Other Clubs',
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w800
            ),),),)
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:  BottomNavigationBar(
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
          backgroundColor: primaryColor,
          
          ),
      body: ListView.builder(
        itemBuilder: (x, index) => NewsFeed(),
        
        )
      );
  }
}