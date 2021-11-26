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
            child: Container(
          width: width(1, context) - 32,
          
          child:
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.centerRight,
                        // color: Colors.redAccent,
                        child: Text(
                          fixtures.homeTeamName,
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
                          '''${fixtures.awayTeamName}''',
                          overflow: TextOverflow.ellipsis,
                          style: AppTheme.headline4(context, black),
                        ),
                      ),
                    ),
                    
                  ],),
        )
      )
    );
  }
}

// class Away extends StatelessWidget {
//   final Fixtures fixtures;

//   const Away(this.fixtures, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(
//         fixtures.awayTeamName,
//         style: AppTheme.headline4(context, black),
//       ),
//     );
//   }
// }

// class Home extends StatelessWidget {
//   final Fixtures fixtures;
//   const Home(
//     this.fixtures,
//     { Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(
//         fixtures.homeTeamName,
//         textDirection: TextDirection.rtl,
//         style: AppTheme.headline4(context, black),
//       ),
//     );
//   }
// }
