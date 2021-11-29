import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/models/matches.dart';
import 'package:flutter/material.dart';

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

  String home() {
    if (fixtures.homeTeamName == null) {
      return 'homeTeam';
    } else {
      return '${fixtures.homeTeamName} : ${fixtures.awayTeamName}';
    }
  }

  String away() {
    if (fixtures.awayTeamName == null) {
      return 'awayTeam';
    } else {
      return '${fixtures.awayTeamName}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
    child: Container(
    width: width(1, context) - 32,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [

        Flexible(
          flex: 2,
          child: Container(
            alignment: Alignment.centerRight,
            // color: Colors.redAccent,
            child: Text(
              home(),
              // fixtures.homeTeamName,
              textDirection: TextDirection.rtl,
              overflow: TextOverflow.ellipsis,
              style: AppTheme.headline4(context, black),
            ),
          ),
        ),

        SizedBox(
          width: 12,
        ),

        Container(
          // color: Colors.greenAccent,
          child: Column(
            children: [
              Text(
                fixtures.clock.toString(),
                style: AppTheme.headline6(
                    context, Colors.green, FontWeight.bold),
              ),
              Text(
                scores(),
                style:
                    AppTheme.headline4(context, black, FontWeight.bold),
              ),
            ],
          ),
        ),

        SizedBox(
          width: 12,
        ),


        Flexible(
          flex: 2,
          child: Container(
            alignment: Alignment.centerLeft,
            // color: Colors.blueAccent,
            child: Text(
              away(),
              // '${fixtures.awayTeamName}',
              overflow: TextOverflow.ellipsis,
              style: AppTheme.headline4(context, black),
            ),
          ),
        ),
        
      ],),
)
);
}
}