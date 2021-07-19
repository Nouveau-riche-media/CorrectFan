import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';



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
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(200)),
        child: SvgPicture.asset('assets/images/logo.svg',),
        )
    );
  }
}

class IlwoLogo extends StatelessWidget {
  const IlwoLogo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(200)),
      child: Container(
        width: 100,
        height: 100,
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(200)),
        )
    );
  }
}

class Button extends StatelessWidget {

  final GestureTapCallback onPressed;
  final String label;
  
  const Button({ Key? key,
    required this.onPressed,
    required this.label
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(label.toUpperCase(),
        style: GoogleFonts.inter(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 12
        ),),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
        minimumSize: MaterialStateProperty.all(Size(270, 32)),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16))
      ),
      
    );
  }
}


class Club extends StatelessWidget {
  const Club({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 32),
      padding: EdgeInsets.all(12),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(400),
              color: Colors.cyanAccent[200]
            ),
          ),

          SizedBox(width: 16,),

          Text('ClubName')
        ],
      ),
    );
  }
}

class NewsFeed extends StatefulWidget {
  const NewsFeed({ Key? key }) : super(key: key);

  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    return Card(
      
    );
  }
}