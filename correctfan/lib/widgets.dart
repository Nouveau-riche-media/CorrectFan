import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class IlwLogo extends StatelessWidget {
  const IlwLogo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(200)),
      child: Container(
        width: 30,
        height: 30,
        // padding: EdgeInsets.all(),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(200)),
          
        child: Container(
          width: 20,
          child: SvgPicture.asset('assets/images/logo.svg')),
        )
    );
  }
}