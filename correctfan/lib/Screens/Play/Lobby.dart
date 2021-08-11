import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lobby extends StatefulWidget {
  // const Lobby({ Key? key }) : super(key: key);

  @override
  _LobbyState createState() => _LobbyState();
}

class _LobbyState extends State<Lobby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                addAutomaticKeepAlives: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (x, index) => ContestCard(),
                itemCount: 4,
                ),
            ),

            Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24)),
              clipBehavior: Clip.antiAlias,
              child: Container(
                height: 40,
                padding: EdgeInsets.all(12),
                color: Color(0xFF50789B),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
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

                          Icon(Icons.filter_list_rounded, color: Colors.white),
                      ],
                    ),
                    ]
                ),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.width / 2,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListView.separated(
                separatorBuilder: (x, index) => SizedBox(height: 8,),
                itemCount: 6,
                itemBuilder: (x, index) => LobbyContestCard(),
                scrollDirection: Axis.vertical,
              ),
            )
          ],
        )
      
    );
  }
}