import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/widgets/matchStats.dart';
import 'package:correctfan/widgets/transparentAppBar.dart';
import 'package:flutter/material.dart';

class MatchStatsPage extends StatefulWidget {
  const MatchStatsPage({Key? key}) : super(key: key);

  @override
  _MatchStatsState createState() => _MatchStatsState();
}

class _MatchStatsState extends State<MatchStatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: transparentAppBar(BuildContext, context),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text('Match Stats',
              style: AppTheme.headline4(context, primary)),
              SizedBox(height: 16),
            Container(
              height: height(1, context),
              child: MatchStats()),
          ],
        )),
      ),
    );
  }
}
