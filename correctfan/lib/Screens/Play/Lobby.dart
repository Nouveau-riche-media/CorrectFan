import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';

class Lobby extends StatefulWidget {
  // const Lobby({ Key? key }) : super(key: key);

  @override
  _LobbyState createState() => _LobbyState();
}

class _LobbyState extends State<Lobby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                addAutomaticKeepAlives: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (x, index) => ContestCard(),
                itemCount: 4,
                ),
            ),

            // DataTable(
            //   columns: columns,
            //   rows: rows
            //   )
          ],
        )
      
    );
  }
}