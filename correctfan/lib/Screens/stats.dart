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
    Color backgroundColor = Theme.of(context).backgroundColor;
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 164,
        title: SvgPicture.asset('assets/images/cflettermark.svg',width: 120,),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100)
          ,
          child: Container(
            height: 114,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: backgroundColor,
                    child: Text('A'),
                    radius: 24,
                  ),
                  CircleAvatar(
                    backgroundColor: backgroundColor,
                    child: Text('A'),
                    radius: 24,
                  ),
                  CircleAvatar(
                    backgroundColor: backgroundColor,
                    child: Text('A'),
                    radius: 24,
                  ),
                  CircleAvatar(
                    backgroundColor: backgroundColor,
                    child: Text('A'),
                    radius: 24,
                  ),
                  CircleAvatar(
                    backgroundColor: backgroundColor,
                    child: Text('A'),
                    radius: 24,
                  )
                ],
              )
            ),
          ),)
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          height: MediaQuery.of(context).size.height / 2 + 32,
          child: Players()
        ),
          
    );
  }
}