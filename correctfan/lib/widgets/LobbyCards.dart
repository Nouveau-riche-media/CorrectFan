import 'package:correctfan/Screens/Competetions/Speed50_leaderBoard.dart';
import 'package:correctfan/constants/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class ContestCard extends StatelessWidget {
  const ContestCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: width(2, context) - 24,
      // height: height(4, context),
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            color: black,
            child: Text('1stPlace - 50K', style: AppTheme.headline5(context, lightGrey!)),
          ),

          SizedBox(height: 8,),

          Text('\$100K Sizzle Sunday', style:AppTheme.headline5(context, white, FontWeight.bold)),

          SizedBox(
          height: 16,
        ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Entry Fee', style: AppTheme.headline6(context, white)),
                Text('\$10', style: AppTheme.headline6(
                        context,
                        white,
                        FontWeight.bold
                      ))
              ],
            ),
          ),

          SizedBox(height: 12,),


          LinearProgressIndicator(
            value: 50,
            color: blue,
          ),

          SizedBox(
          height: 8,
        ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('50,000 Teams', style: AppTheme.headline7(context, white)),
              Text('0 Slots left', style: AppTheme.headline7(context, white,))
            ],),
          ),
        ]
      ),
    );
  }
}




class LobbyContestCard extends StatefulWidget {
  const LobbyContestCard({ Key? key }) : super(key: key);

  @override
  _LobbyContestCardState createState() => _LobbyContestCardState();
}

class _LobbyContestCardState extends State<LobbyContestCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      color: lightGrey,
      width: width(1, context) - 24,
      // height: 78,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Speed 50',
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey[600]
                    ),),
                  Text('50/50',
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      color: Colors.grey[600]
                    ),),
                ],
              ),
    
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('250,000',
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.w900,
                      color: primary
                    ),),
                  Text('Winners',
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      color: primary
                    ),),
                ],
              ),
    
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500)
                ),
                child: TextButton( 
                  onPressed: () => Get.to(Speed50()),
                  // speed50Rules(context),
                  child: Text('JOIN'),
                  style: ButtonStyle(
                    // padding: MaterialStateProperty.all(EdgeInsets.all(16)),
                    // minimumSize: MaterialStateProperty.all(Size(0, 0)),
                    foregroundColor: MaterialStateProperty.all(white),
                    backgroundColor: MaterialStateProperty.all(secondary),
                    elevation: MaterialStateProperty.all(0),
                    alignment: Alignment.center,
                    textStyle: MaterialStateProperty.all(
                      GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 8
                      )),
                  ),
                  ),
              )
            ],
          ),
    
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 1,
            ),
    
            LinearProgressIndicator(
              value: 100,
              // color: Theme.of(context).accentColor,
            ),
    
            Row(
              children: [
                Text('50,000 teams',
                  style: GoogleFonts.inter(
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor
                  ),),
                Spacer(flex: 1,),
                Text('0 slots left',
                  style: GoogleFonts.inter(
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor
                  ),),
              ],
            )
        ],
      )
    );
  }
}