import 'package:correctfan/constants/ui.dart';
import 'package:flutter/material.dart';


class MatchOverview extends StatefulWidget {
  const MatchOverview({ Key? key }) : super(key: key);

  @override
  _MatchOverviewState createState() => _MatchOverviewState();
}

class _MatchOverviewState extends State<MatchOverview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (x, context) => Details(),
    );
  }
}

class Details extends StatelessWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      width: width(1, context),
      color: white,
      alignment: Alignment.centerRight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(flex: 1, child: Container(width: 1,)),
          SizedBox(width: 16,),
          Column(
            children: [
              Text('Player',
              style: AppTheme.headline5(context, black),),
              Text(
              'Assist',
              style: AppTheme.headline5(context, black),
            ),

            ]
          ),
          SizedBox(
            width: 16,
          ),
          Icon(Icons.access_alarm),
          SizedBox(
            width: 16,
          ),
          Text('23')
        ],
      ),
    );
  }
}