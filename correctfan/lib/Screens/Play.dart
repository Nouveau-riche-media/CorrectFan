import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Play/Lobby.dart';

class Play extends StatefulWidget {
  // const Play({ Key? key }) : super(key: key);

  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  @override
  Widget build(BuildContext context) {
    var backgroundColor;
    return DefaultTabController(
  // The number of tabs / content sections to display.
  length: 3,
  child: Scaffold(
    backgroundColor: Colors.white,
    drawer: CustomDrawer(),

    


    appBar: AppBar(
      title: SvgPicture.asset('assets/images/cflettermark.svg'),
      centerTitle: true,
      bottom: TabBar(tabs: [
        Tab(child: Text('Lobby')),
        Tab(child: Text('Live')),
        Tab(child: Text('My Contests'),)
      ]),
    ),
    body: TabBarView(
      children: [
        Lobby(),
        Lobby(),
        Lobby(),
      ],)
      ),
    );
  }
}