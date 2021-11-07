// import 'package:correctfan/Screens/News/NewsDetail.dart';
// import 'package:correctfan/services/flutterfire.dart';
import 'package:correctfan/Screens/Competetions/Speed50_leaderBoard.dart';
import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/models/players.dart';
import 'package:correctfan/widgets/RulesDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

import 'Screens/Drawer/TransactionHistory.dart';
import 'Screens/Drawer/Verification/AccountVerification.dart';
import 'constants/controllers.dart';
// import 'package:flip_panel/flip_panel.dart';





class IlwLogo extends StatelessWidget {
  // const IlwLogo({ Key? key }) : super(key: key);

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
  // const IlwoLogo({ Key? key }) : super(key: key);

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
  
  const Button({
    required this.onPressed,
    required this.label
    });


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
        backgroundColor: MaterialStateProperty.all(black),
        minimumSize: MaterialStateProperty.all(Size(270, 32)),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16))
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

    return GestureDetector(
      onTap: () => Get.toNamed('News Detail'),
      child: Card(
        elevation: 8,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: primary,
                        child: Text('A'),
                      ),
                      SizedBox(width: 4,),
                      Text(
                      'MARTIN ODEGAARD CONFIRMS\nARSENAL EXIT',
                      textWidthBasis: TextWidthBasis.parent,
                      softWrap: true,
                      style: AppTheme.headline4(context, primary))
                    ],
            ),
                      SizedBox(height: 8,),
    
                  Text('Martin Odegaard penned a heartfelt goodbye message to\nArsenal fans after confirming he would return to Real Madrid.',
                    style: AppTheme.headline5(context, black),),
    
                    Row(
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          '2hrs ago',
                          style: GoogleFonts.inter(
                            color: Colors.grey[300],
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      ],
                    )
                ],
              ),
                
    
              SizedBox(height: 8,),
    
              Container(
                height: 160,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(50, 229, 229, 229)
                ),
                child: Container(
                  child: SvgPicture.asset('assets/images/logo.svg',
                    color: Color.fromARGB(100, 229, 229, 229),),
                )
              ),
    
              SizedBox(height: 16,),
    
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Container(
                  //   height: 24,
                  //   width: 120,
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(8),
                  //         borderSide: BorderSide(
                  //           style: BorderStyle.solid,
                  //           color: Color(0xFFBDBDBD),
                  //           width: 1
                  //         )
                  //         )
                  //       )),
                  // ),
                  Row(children: [
                    Icon(Icons.message),
                    Text('data')
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Icon(Icons.favorite),
                    Text('data')
                  ],),
                ],
              ),
    
            ]
          ),
        ),
      ),
    );
  }
}



class InboxMessage extends StatelessWidget {
  const InboxMessage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'InboxDetails'),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFE8E8E8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            CircleAvatar(),
            SizedBox(width: 16,),
            Container(
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Welcome Winner!',
                        style: GoogleFonts.inter(
                          color: Color(0xFF4F4F4F),
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),),
                        Spacer(flex: 1,),
                      Text('Now',
                        style: GoogleFonts.inter(
                            color: Color(0xFF4F4F4F),
                            fontSize: 8,
                            ),
                      )
                    ],
                  ),
                  SizedBox(
                  height: 8,
                ),
                  Text('Hello Dami, welcome to the winner’s corner! We are very\nexcited to have you join many others to share and enjoy...',
                    style: GoogleFonts.inter(
                        color: Color(0xFF4F4F4F),
                        fontSize: 8,
                        ),)
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}




class TransactionInfo extends StatefulWidget {
  const TransactionInfo({ Key? key }) : super(key: key);

  @override
  _TransactionInfoState createState() => _TransactionInfoState();
}

class _TransactionInfoState extends State<TransactionInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      color: Colors.white,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('0011',
            style: GoogleFonts.inter(
              fontSize: 12,
              color: Color(0xFF4F4F4F),
            ),),

          SizedBox(width: 4,),

          Text(
          '10',
          style: GoogleFonts.inter(
            fontSize: 12,
            color: Color(0xFF4F4F4F),
          ),
        ),
        Text(
          'Entry Fee - ZChamp',
          style: GoogleFonts.inter(
            fontSize: 12,
            color: Color(0xFF4F4F4F),
          ),
        ),
        ]
      ),
    );
  }
}