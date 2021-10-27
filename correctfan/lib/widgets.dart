// import 'package:correctfan/Screens/News/NewsDetail.dart';
// import 'package:correctfan/services/flutterfire.dart';
import 'package:correctfan/constants/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

import 'Screens/Drawer/TransactionHistory.dart';
import 'Screens/Drawer/Verification/AccountVerification.dart';
import 'constants/controllers.dart';
// import 'package:flip_panel/flip_panel.dart';





class IlwLogo extends StatelessWidget {
  // const IlwLogo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(200)),
      child: Container(
        width: 30,
        height: 30,
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(200)),
        child: SvgPicture.asset('assets/images/logo.svg',),
        )
    );
  }
}

class IlwoLogo extends StatelessWidget {
  // const IlwoLogo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(200)),
      child: Container(
        width: 100,
        height: 100,
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(200)),
        )
    );
  }
}

class Button extends StatelessWidget {

  final GestureTapCallback onPressed;
  final String label;
  
  const Button({
    required this.onPressed,
    required this.label
    });


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(label.toUpperCase(),
        style: GoogleFonts.inter(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 12
        ),),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
        minimumSize: MaterialStateProperty.all(Size(270, 32)),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16))
      ),
      
    );
  }
}




class NewsFeed extends StatefulWidget {
  const NewsFeed({ Key? key }) : super(key: key);

  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'News Detail'),
      child: Card(
        elevation: 8,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Text('A'),
                      ),
                      SizedBox(width: 4,),
                      Text(
                      'MARTIN ODEGAARD CONFIRMS\nARSENAL EXIT',
                      textWidthBasis: TextWidthBasis.parent,
                      softWrap: true,
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),
                    ),
                    ],
            ),
                      SizedBox(height: 8,),
    
                  Text('Martin Odegaard penned a heartfelt goodbye message to\nArsenal fans after confirming he would return to Real Madrid.',
                    style: Theme.of(context).textTheme.bodyText1,),
    
                    Row(
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          '2hrs ago',
                          style: GoogleFonts.inter(
                            color: Colors.grey[300],
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      ],
                    )
                ],
              ),
                
    
              SizedBox(height: 8,),
    
              Container(
                height: 160,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(50, 229, 229, 229)
                ),
                child: Container(
                  child: SvgPicture.asset('assets/images/logo.svg',
                    color: Color.fromARGB(100, 229, 229, 229),),
                )
              ),
    
              SizedBox(height: 16,),
    
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Container(
                  //   height: 24,
                  //   width: 120,
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(8),
                  //         borderSide: BorderSide(
                  //           style: BorderStyle.solid,
                  //           color: Color(0xFFBDBDBD),
                  //           width: 1
                  //         )
                  //         )
                  //       )),
                  // ),
                  Row(children: [
                    Icon(Icons.message),
                    Text('data')
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Icon(Icons.favorite),
                    Text('data')
                  ],),
                ],
              ),
    
            ]
          ),
        ),
      ),
    );
  }
}

class ContestCard extends StatefulWidget {
  // const ContestCard({ Key? key }) : super(key: key);

  @override
  _ContestCardState createState() => _ContestCardState();
}

class _ContestCardState extends State<ContestCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: secondary
      ),
      height: 70,
      width: 160,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8),
            alignment: Alignment.center,
            color: Colors.black,
            height: 18,
            width: 160,
            child: Text('1st Place - \$50K',
              style: GoogleFonts.lato(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Colors.white
              ))
          ),

          Text('\$ 100k Sizzle Sunday',
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Colors.white
            ),),

            SizedBox(height: 16,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Entry Fee',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Colors.white
                ),),

                Text('\$50',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
            ),),
              ],
            ),

            SizedBox(height: 16,),

            Column(
              children: [
                LinearProgressIndicator(
                  value: 50,
                  // color: Theme.of(context).accentColor,
                ),

                SizedBox(height: 4,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('50,000 Teams',
                    style: GoogleFonts.inter(
                      fontSize: 8,
                      color: Colors.white
                    )),
                  Text('0 left',
                    style: GoogleFonts.inter(
                      fontSize: 8,
                      color: Colors.white
                    )),
                ],)
              ],
            ),

            // FlipPanel.builder(
            //   loop: 1,
            //   itemBuilder: (context, index) => Container(
            //     color: Colors.white,
            //     padding: const EdgeInsets.symmetric(horizontal: 6.0),
            //     child: Text(
            //       '65878',
            //       style: GoogleFonts.inter(
            //         color: Colors.black,
            //         fontSize: 24,
            //       ),
            //     ),
            //   ),
            //   itemsCount: 6,
            //   period: Duration(days: 14)
            //   ))
        ],
      )
    );
  }
}



// Lobby
class LobbyContestCard extends StatefulWidget {
  const LobbyContestCard({ Key? key }) : super(key: key);

  @override
  _LobbyContestCardState createState() => _LobbyContestCardState();
}

class _LobbyContestCardState extends State<LobbyContestCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      color: Colors.grey[300],
      width: 316,
      // height: 78,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Speed 50',
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey[600]
                    ),),
                  Text('50/50',
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      color: Colors.grey[600]
                    ),),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('250,000',
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.w900,
                      color: primary
                    ),),
                  Text('Winners',
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      color: primary
                    ),),
                ],
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500)
                ),
                child: TextButton( 
                  onPressed: () {},
                  child: Text('JOIN'),
                  style: ButtonStyle(
                    // padding: MaterialStateProperty.all(EdgeInsets.all(16)),
                    // minimumSize: MaterialStateProperty.all(Size(0, 0)),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(secondary),
                    elevation: MaterialStateProperty.all(0),
                    alignment: Alignment.center,
                    textStyle: MaterialStateProperty.all(
                      GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 8
                      )),
                  ),
                  ),
              )
            ],
          ),

          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 1,
            ),

            LinearProgressIndicator(
              value: 100,
              // color: Theme.of(context).accentColor,
            ),

            Row(
              children: [
                Text('50,000 teams',
                  style: GoogleFonts.inter(
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor
                  ),),
                Spacer(flex: 1,),
                Text('0 slots left',
                  style: GoogleFonts.inter(
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor
                  ),),
              ],
            )
        ],
      )
    );
  }
}


class InboxMessage extends StatelessWidget {
  const InboxMessage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'InboxDetails'),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFE8E8E8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            CircleAvatar(),
            SizedBox(width: 16,),
            Container(
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Welcome Winner!',
                        style: GoogleFonts.inter(
                          color: Color(0xFF4F4F4F),
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),),
                        Spacer(flex: 1,),
                      Text('Now',
                        style: GoogleFonts.inter(
                            color: Color(0xFF4F4F4F),
                            fontSize: 8,
                            ),
                      )
                    ],
                  ),
                  SizedBox(
                  height: 8,
                ),
                  Text('Hello Dami, welcome to the winner’s corner! We are very\nexcited to have you join many others to share and enjoy...',
                    style: GoogleFonts.inter(
                        color: Color(0xFF4F4F4F),
                        fontSize: 8,
                        ),)
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Players extends StatefulWidget {
  const Players({Key? key}) : super(key: key);

  @override
  _PlayersState createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 32),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 12,
          ),
          SvgPicture.asset('assets/images/pl.svg'),
          SizedBox(
            height: 12,
          ),
          Text('PLAYER STATS TABLE',
            style: GoogleFonts.inter(
              fontSize: 12,
              color: Color(0xFFB2B2B2),
              fontWeight: FontWeight.w900
            )),
            SizedBox(height: 12,),

          Divider(color: Theme.of(context).primaryColor, indent: 12, endIndent: 12,),

          SizedBox(
            height: 12,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FilterChip(
                label: Text('Defender'),
                onSelected: (bool x) {} ),

                FilterChip(label: Text('Goalkeeper'), onSelected: (bool x) {}),

                FilterChip(
                label: Text('MidFielder'),
                onSelected: (bool x) {} ),

                FilterChip(
                label: Text('Forward'),
                onSelected: (bool x) {} ),                
            ],
          ),

          SizedBox(height: 12,),

          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(8),
            color: secondary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Club',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),

                  Text(
                  'Players',
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),

                Text(
                  'Position',
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),

                Text(
                  'Market Value',
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),

                Text(
                  'Rating',
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          Flexible(
            flex: 1,
            child: ListView.builder(
              itemCount: 9,
              itemBuilder: (x, index) {
                return Container(
                  padding: EdgeInsets.fromLTRB(4, 8, 4, 8),
                  margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                  color: Color(0xFFC4C4C4),
                  child: (
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 12,
                        ),

                        CircleAvatar( radius: 9,),

                        SizedBox(
                          width: 24,
                        ),

                        Text('Player',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Color(0xFF4F4F4F)
                          ),),

                          SizedBox(
                          width: 24,
                        ),

                          Text('Position',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Color(0xFF4F4F4F)
                          ),),

                          SizedBox(
                          width: 24,
                        ),

                          Text('\$\$\$',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Color(0xFF4F4F4F)
                          ),),

                          SizedBox(
                          width: 64,
                        ),

                          Text('20',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Color(0xFF4F4F4F)
                          ),),
                      ],
                    )
                  ),
                );
              }),
          )
        ],
      ),
    );
  }
}


class TransactionInfo extends StatefulWidget {
  const TransactionInfo({ Key? key }) : super(key: key);

  @override
  _TransactionInfoState createState() => _TransactionInfoState();
}

class _TransactionInfoState extends State<TransactionInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      color: Colors.white,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('0011',
            style: GoogleFonts.inter(
              fontSize: 12,
              color: Color(0xFF4F4F4F),
            ),),

          SizedBox(width: 4,),

          Text(
          '10',
          style: GoogleFonts.inter(
            fontSize: 12,
            color: Color(0xFF4F4F4F),
          ),
        ),
        Text(
          'Entry Fee - ZChamp',
          style: GoogleFonts.inter(
            fontSize: 12,
            color: Color(0xFF4F4F4F),
          ),
        ),
        ]
      ),
    );
  }
}