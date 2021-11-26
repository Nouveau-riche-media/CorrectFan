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
        child: Center(
            child: Row(
              children: [
                Text(
                  fixtures.homeTeamName.toString(),
                  style: AppTheme.headline4(context, black),
                ),
                Column(
                  children: [
                    Text(
                      fixtures.clock.toString(),
                      style: AppTheme.headline6(
                          context, Colors.green, FontWeight.bold),
                    ),
                    Text(
                      scores(),
                      style: AppTheme.headline4(context, black, FontWeight.bold),
                    )
                  ],),

                Text(
              fixtures.homeTeamName.toString(),
              style: AppTheme.headline6(context, black),
                ),
            ])
          )
        );
  }
}

class Away extends StatelessWidget {
  final Fixtures fixtures;

  const Away(this.fixtures, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        fixtures.awayTeamName,
        style: AppTheme.headline4(context, black),
      ),
    );
  }
}


class Home extends StatelessWidget {
  final Fixtures fixtures;
  const Home(
    this.fixtures,
    { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        fixtures.homeTeamName,
        textDirection: TextDirection.rtl, 
        style: AppTheme.headline4(context, black),
      ),
    );
  }
}