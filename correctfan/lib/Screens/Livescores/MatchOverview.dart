
import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/widgets/matchOverview.dart';
import 'package:correctfan/widgets/transparentAppBar.dart';
import 'package:flutter/material.dart';

class MatchOverviewPage extends StatefulWidget {
  const MatchOverviewPage({ Key? key }) : super(key: key);

  @override
  _MatchOverviewState createState() => _MatchOverviewState();
}

class _MatchOverviewState extends State<MatchOverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: transparentAppBar(BuildContext, context),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFF3F3F3),
          height: height(1, context),
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                    height: 16,
                  ),

              Text('Match Overview',
                style: AppTheme.headline4(context, primary),),

                SizedBox(height: 16,),

              Container(
                height: height(1, context),
                child: MatchOverview()
                ),
            ],
          )),
      )

    );
  }
}