import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/widgets/LobbyCards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Lobby extends StatefulWidget {
  const Lobby({ Key? key }) : super(key: key);

  @override
  _LobbyState createState() => _LobbyState();
}

class _LobbyState extends State<Lobby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  // height: 100,
                  child: ListView.separated(
                    addAutomaticKeepAlives: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(width: 8,),
                    itemBuilder: (context, index) => ContestCard(),
                    itemCount: 4,
                    ),
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(16, 16, 16, 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),),),
                clipBehavior: Clip.antiAlias,
                child: Container(
                  height: 40,
                  padding: EdgeInsets.all(12),
                  color: Color(0xFF50789B),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset('assets/images/pl.svg'),
                      Text(
                        'Matchday 35 of 38'.toUpperCase(),
                        style: GoogleFonts.inter(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      ),
              
                      // SizedBox(width: 16,),
              
                      Row(
                        children: [
                          Text('200 Contests',
                            style: GoogleFonts.inter(
                              fontSize: 8,
                              color: Colors.white
                            ),
                          ),
                          SizedBox(width: 4,),
                            Icon(
                              Icons.filter_list_rounded,
                              color: Colors.white,
                              size: 16,),
                        ],
                      ),
                      ]
                  ),
                ),
              ),

              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(height: 8,),
                    itemCount: 6,
                    itemBuilder: (context, index) => LobbyContestCard(),
                    scrollDirection: Axis.vertical,
                  ),
                ),
              ),

              SizedBox(height: 12,)
            ],
          ),
      )
      
    );
  }
}