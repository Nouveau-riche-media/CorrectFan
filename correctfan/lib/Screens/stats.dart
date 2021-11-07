import 'package:correctfan/Controllers/playerController.dart';
import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/widgets/Drawer.dart';
import 'package:correctfan/widgets/PlayersInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Stats extends StatefulWidget {
  // const Stats({ Key? key }) : super(key: key);

  @override
  _StatsState createState() => _StatsState();
}

final PlayerController playerController = Get.find();

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    // Color backgroundColor = Theme.of(context).backgroundColor;
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          centerTitle: true,
          // toolbarHeight: 164,
          title: SvgPicture.asset(
            'assets/images/cflettermark.svg',
            width: 120,
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(42),
            child: Center(
              child: Container(
                  alignment: Alignment.center,
                  height: 52,
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => CircleAvatar(
                          backgroundColor: primary,
                          foregroundColor: white,
                          radius: 24,
                        )
                  ),
                )
              )
            )
          ),
        ),
      body: Center(
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          elevation: 4,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/images/pl.svg'),
                  SizedBox(height: 8),
                  Text('player Stats Table'.toUpperCase(),
                      style: AppTheme.headline5(context, grey, FontWeight.bold)),
                  SizedBox(height: 8),
                  Divider(
                    color: Theme.of(context).backgroundColor,
                    indent: 8,
                    endIndent: 8,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilterChip(label: Text('Forward', style: AppTheme.headline5(context, white)), onSelected: (bool) {}),
                      FilterChip(label: Text('Goalkeeper', style: AppTheme.headline5(context, white)), onSelected: (bool) {}),
                      FilterChip(label: Text('Midfielder',
                              style: AppTheme.headline5(context, white)),
                          onSelected: (bool) {}),
                      FilterChip(label: Text('Defender',
                              style: AppTheme.headline5(context, white)),
                          onSelected: (bool) {}),
                    ],
                  ),

                  Container(
                    color: primary,
                    width: width(1, context),
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Player', style: AppTheme.headline5(context, white, FontWeight.bold)),
                        Text('Position', style: AppTheme.headline5(context, white, FontWeight.bold)),
                        Text('Market Value', style: AppTheme.headline5(context, white, FontWeight.bold)),
                        Text('Rating', style: AppTheme.headline5(context, white, FontWeight.bold)),
                        Text('Number', style: AppTheme.headline5(context, white, FontWeight.bold)),
                      ]
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    // padding: EdgeInsets.symmetric(horizontal: 32),
                    height: height(2, context) - 10,
                    child: Obx(() => ListView.separated(
                      padding: EdgeInsets.only(bottom: 24),
                        itemBuilder: (context, index) => PlayersInfo(playerController.players[index]),
                        separatorBuilder: (context, index) => SizedBox(height: 12,),
                        itemCount: playerController.players.length)),
                  )
                ]),
          ),
        ),
      ),  
    );
  }
}