
import 'package:correctfan/Livescores/LiveScoreDetail.dart';
import 'package:correctfan/Screens/News/NewsDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
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


class Club extends StatelessWidget {
  // const Club({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 32),
      padding: EdgeInsets.all(12),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(400),
              color: Colors.cyanAccent[200]
            ),
          ),

          SizedBox(width: 16,),

          Text('ClubName')
        ],
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

class CustomDrawer extends StatefulWidget {
  // const CustomDrawer({ Key? key }) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {

    TextStyle tileTheme = GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white
    );

    return  Drawer(
      elevation: 8,

      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(

          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 56),
          primary: true,
          clipBehavior: Clip.antiAlias,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(),
                      SizedBox(width: 8,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.of(context).popAndPushNamed('Profile'),
                            child: Text('Name',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.white)
                            ),),
                          Text('@username',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Colors.white)
                          )],
                      )
                    ],
                  ),
                  ),

                  IconButton( icon: Icon(Icons.chevron_left_rounded), color: Colors.white, onPressed: () => Navigator.pop(context),),
              ],
            ),

            Divider(color: Colors.white,),

            ListTile(
              isThreeLine: true,
              leading: Icon(Icons.account_balance_wallet_rounded, color: Colors.white,),
              title: Text('My Wallet',
                style: tileTheme
                ),
              subtitle: Row(children: [
                Text('Reward Bank',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                SizedBox(width: 30,),
                Text('\$\$\$',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Colors.white,
                  ),)
                ]),
              onTap: (){},
              trailing: Text('\$\$\$',
                style: GoogleFonts.inter(
                  fontSize: 12
                ),
              ),
            ),
            
            ListTile(
              leading: Icon(Icons.lock, color: Colors.white,),
              title: Text('Verify My Account',
                style: tileTheme
              ),
              onTap: (){},
            ),

            ListTile(
              leading: Icon(Icons.history, color: Colors.white,),
              title: Text('Transaction History',
                style: tileTheme
              ),
              onTap: (){},),
              
              ListTile(
              leading: Icon(Icons.sports_soccer_rounded, color: Colors.white,),
              title: Text('How to Play',
                style: tileTheme
              ),
              onTap: (){},),

              ListTile(
              leading: Icon(Icons.tune_rounded, color: Colors.white,),
              title: Text('Privacy and Settings',
                style: tileTheme
              ),
              onTap: (){},),

              ListTile(
              leading: Icon(Icons.help, color: Colors.white,),
              title: Text('Support',
                style: tileTheme
              ),
              onTap: (){},),

              ListTile(
              leading: ImageIcon(AssetImage('assets/images/correctfanIcon.png')),
              title: Text('About CorrectFan',
                style: tileTheme
              ),
              onTap: (){},),
            ],
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
        color: Theme.of(context).primaryColor
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
            width: 89,
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
                  color: Theme.of(context).accentColor,
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
                      color: Theme.of(context).primaryColor
                    ),),
                  Text('Winners',
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      color: Theme.of(context).primaryColor
                    ),),
                ],
              ),

              TextButton(
                onPressed: () {},
                child: Text('JOIN'),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(16)),
                  minimumSize: MaterialStateProperty.all(Size(0, 0)),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                  elevation: MaterialStateProperty.all(0),
                  alignment: Alignment.center,
                  textStyle: MaterialStateProperty.all(
                    GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 8
                    )),
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
              color: Theme.of(context).accentColor,
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

class Scores extends StatefulWidget {
  const Scores({ Key? key }) : super(key: key);

  @override
  _ScoresState createState() => _ScoresState();
}

class _ScoresState extends State<Scores> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('32',
          style: GoogleFonts.inter(
            color: Colors.green,
            fontWeight: FontWeight.w900,
            fontSize: 10
          ),),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'LiveScoreDetails'),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Club',
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).primaryColor,
                )),
                SizedBox(width: 8,),
              CircleAvatar(
                radius: 10,
              ),
              SizedBox(
                width: 16,
              ),
              Text('1 : 2',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,)),
                  SizedBox(
                width: 16,
              ),
              CircleAvatar(
                radius: 10,
              ),
              SizedBox(
                width: 8,
              ),
              Text('Club',
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).primaryColor,)),
            ],
          ),
        ),
      ],
    );
  }
}