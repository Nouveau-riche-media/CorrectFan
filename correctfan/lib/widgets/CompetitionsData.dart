import 'package:correctfan/constants/ui.dart';
import 'package:flutter/material.dart';

class CompetitionDetails extends StatelessWidget {
  const CompetitionDetails({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            margin: EdgeInsets.all(16),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Speed 50', style: AppTheme.headline4(context, grey,FontWeight.bold)),
                    Text('50/50', style: AppTheme.headline6(context, grey),)
                  ],),

                  SizedBox(height: 8,),

                  Divider(color: primary, thickness: 2,),

                  SizedBox(
                    height: 16,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Reward pool', style: AppTheme.headline5(context, primary, FontWeight.bold),),
                          Text(
                            'Reward pool',
                            style: AppTheme.headline5(
                                context, black,),
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Winners',
                            style: AppTheme.headline5(
                                context, primary, FontWeight.bold),
                          ),
                          Text(
                            '76',
                            style: AppTheme.headline5(
                              context,
                              black,
                            ),
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Entry fee', style: AppTheme.headline5(context, primary, FontWeight.bold),),
                          Text(
                            '\$7',
                            style: AppTheme.headline5(
                                context, black,),
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Entries', style: AppTheme.headline5(context, primary, FontWeight.bold),),
                          Text(
                            '200',
                            style: AppTheme.headline5(
                                context, black,),
                          ),
                        ],
                      )
                    ],
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  Slider.adaptive(
                    // thumbColor: primary,
                    activeColor: Colors.green,
                    divisions: 1,
                    max: 100,
                    min: 0,
                    value: 55, onChanged: (n) {}
                    )
                ],
              ),
            ),
          );
  }
}