import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatefulWidget {
  // const News({ Key? key }) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {

    Color backgroundColor = Theme.of(context).backgroundColor;
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: backgroundColor,
                    child: Text('A'),
                    radius: 32,
                  ),
                  CircleAvatar(
                    backgroundColor: backgroundColor,
                    child: Text('A'),
                    radius: 32,
                  ),
                  CircleAvatar(
                    backgroundColor: backgroundColor,
                    child: Text('A'),
                    radius: 32,
                  ),
                  CircleAvatar(
                    backgroundColor: backgroundColor,
                    child: Text('A'),
                    radius: 32,
                  ),
                  CircleAvatar(
                    backgroundColor: backgroundColor,
                    child: Text('A'),
                    radius: 32,
                  ),

                ],
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