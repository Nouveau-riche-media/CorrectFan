import 'package:flutter/material.dart';

AppBar transparentAppBar(BuildContext, context){
  return AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.chevron_left_outlined)),
          backgroundColor: Color(0xFFF3F3F3),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Theme.of(context).primaryColor,
          ),
          title: Image.asset('assets/images/Group 39.png'),
          centerTitle: true);
}