import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';

class Play extends StatefulWidget {
  const Play({ Key? key }) : super(key: key);

  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(),
      body: Column(
        children: [

      ],)
    );
  }
}