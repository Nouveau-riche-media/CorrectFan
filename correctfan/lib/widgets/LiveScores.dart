import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/models/matches.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveScores extends StatelessWidget {
  
  final Fixtures fixtures;
  const LiveScores(this.fixtures);

  String scores() {
    if (fixtures.homeTeamScore == null && fixtures.awayTeamScore == null) {
      return 'vs';
    } else {
      return '${fixtures.homeTeamScore} : ${fixtures.awayTeamScore}';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'LiveScoreDetails'),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Text(fixtures.homeTeamName,
              style: AppTheme.headline5(context, primary)),

          // SizedBox(
          //   width: 8,
          // ),

          // CircleAvatar(
          //   radius: 10,
          // ),

          // SizedBox(
          //   width: 16,
          // ),

          Column(
            children: [
              Text(
                fixtures.dateTime.toString(),
                style: GoogleFonts.inter(
                    color: Colors.green,
                    fontWeight: FontWeight.w900,
                    fontSize: 10),
              ),
              Text(scores(),
                  style: AppTheme.headline4(context, black, FontWeight.w400)),
            ],
          ),
          // SizedBox(
          //   width: 16,
          // ),
          // CircleAvatar(
          //   radius: 10,
          // ),
          // SizedBox(
          //   width: 8,
          // ),
          Text(fixtures.awayTeamName,
              style: AppTheme.headline5(context, primary),
              ),
        ],
      ),
    );
  }
}



