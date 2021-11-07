import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/models/players.dart';
import 'package:flutter/material.dart';


class PlayersInfo extends StatelessWidget {
  const PlayersInfo(this.player);
  final Players player;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(player.shortName, style: AppTheme.headline5(context, black)),

          Text(player.jersey.toString(),
          style: AppTheme.headline5(context, black)
          ),

          Text(player.height.toString(), style: AppTheme.headline5(context, black)),

          Text(player.playerId.toString(),
          style: AppTheme.headline5(context, black)
          ),

          // Text(player.playerId, style: AppTheme.headline5(context, black)),

          Text(player.weight.toString(), style: AppTheme.headline5(context, black)),
        ],
      ),
    );
  }
}