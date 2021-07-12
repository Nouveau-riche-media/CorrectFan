import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({ Key? key }) : super(key: key);

  @override
  _Onboarding1State createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {

    Color backgroundColor = Theme.of(context).backgroundColor;
    // Color primaryColor = Theme.of(context).primaryColor;
    // Color backgroundColor = Theme.of(context).backgroundColor;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          IlwLogo()
        ]),
    );
  }
}