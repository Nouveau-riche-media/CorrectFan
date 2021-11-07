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

          Container(
            // padding: EdgeInsets.symmetric(horizontal: 16),
            width: width(1, context) - 32,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: lightGrey!,
                  offset: Offset(4,4),
                  blurRadius: 8
                )
                ]
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Text('Leaderboard', style: AppTheme.headline4(context, primary, FontWeight.bold),),
                ),


                Container(
                  color: primary,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  width: width(1, context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Team Name', style: AppTheme.headline5(context, white, FontWeight.bold),),
                      Text('Points', style:
                          AppTheme.headline5(context, white, FontWeight.bold),
                    ),
                      Text('Rank', style:
                          AppTheme.headline5(context, white, FontWeight.bold),
                    ),
                      ]
                  ),
                ),

                Container(
                  height: height(2, context) - 16,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 20,
                    itemBuilder: (context, index) => 
                    Container(
                      color: lightGrey,
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Team Name', style: AppTheme.headline5(context, black),),
                          Text('40', style: AppTheme.headline5(context, black),),
                          Text('#${index + 1}', style: AppTheme.headline5(context, black),),
                        ],
                      ),
                    )
                  ),
                ),
                SizedBox(height: 16,)
              ],
            ),
          )
        ],
      ),
    );
  }
}