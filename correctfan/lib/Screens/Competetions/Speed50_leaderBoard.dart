import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/widgets/CompetitionsData.dart';
import 'package:correctfan/widgets/transparentAppBar.dart';
import 'package:flutter/material.dart';

class Speed50 extends StatelessWidget {
  const Speed50({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: transparentAppBar(context),
      body: Column(
        children: [
          CompetitionDetails(),

          Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Leaderboard', style: AppTheme.headline4(context, primary, FontWeight.bold),),

                        // TextField(
                        //   decoration: InputDecoration(
                        //     fillColor: lightGrey,

                        //   ),
                        // )
                      ]
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}