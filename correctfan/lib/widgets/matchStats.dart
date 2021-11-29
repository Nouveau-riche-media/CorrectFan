
import 'package:correctfan/constants/ui.dart';
import 'package:flutter/material.dart';

class MatchStats extends StatelessWidget {
  const MatchStats({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) => Details()
        ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      width: width(1, context),
      color: white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('35%'),
              CircleAvatar(),
              Text('Ball Possesssion'),
              CircleAvatar(),
              Text('65%'),
            ],
          ),

          SizedBox(height: 12,),

        LinearProgressIndicator(
          value: .35,
          // valueColor: Colors.green,
        )
        ],
      ),
    );
  }
}