import 'package:correctfan/constants/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets.dart';

class Stats extends StatefulWidget {
  // const Stats({ Key? key }) : super(key: key);

  @override
  _StatsState createState() => _StatsState();
}



class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    // Color backgroundColor = Theme.of(context).backgroundColor;
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          centerTitle: true,
          // toolbarHeight: 164,
          title: SvgPicture.asset(
            'assets/images/cflettermark.svg',
            width: 120,
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(42),
            child: Center(
              child: Container(
                  alignment: Alignment.center,
                  height: 52,
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => CircleAvatar(
                          backgroundColor: primary,
                          foregroundColor: white,
                          radius: 24,
                        )
                  ),
                )
              )
            )
          ),
        ),
        body: Card(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Players()
        ),
          
    );
  }
}