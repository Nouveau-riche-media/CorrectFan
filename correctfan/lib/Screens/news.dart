// import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';

class News extends StatefulWidget {
  // const News({ Key? key }) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {

    // Color backgroundColor = secondary;
    // Color primaryColor = primary;

    return Scaffold(
      drawer: CustomDrawer(),
      backgroundColor: Colors.white,
      // App Bar
      appBar: AppBar(
        centerTitle: true,
        // toolbarHeight: 164,
        
        title: SvgPicture.asset('assets/images/cflettermark.svg',width: 120,),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(42),
          child: Center(
            child: Container(
              alignment: Alignment.center,
              height: 52,
              padding: EdgeInsets.all(8),
              child: Center(
                child: ListView.builder(
                  
                  // padding: EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    width: 32,
                    height: 32,
                    child: Text('A'),
                    decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.circular(32)
                    ),
                  )
                  ),
              )
            ),
          ),)
        ),

        

      // feed
      body: ListView.builder(
        itemBuilder: (x, index) => NewsFeed(),
        itemCount: 4,
        )
      );
  }
}