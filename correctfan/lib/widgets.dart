
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';






class IlwLogo extends StatelessWidget {
  const IlwLogo({ Key? key }) : super(key: key);

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
  const IlwoLogo({ Key? key }) : super(key: key);

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
  
  const Button({ Key? key,
    required this.onPressed,
    required this.label
    }) : super(key: key);


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
  const Club({ Key? key }) : super(key: key);

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

    return Card(
      elevation: 8,
      margin: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Text('A'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('MARTIN ODEGAARD CONFIRMS\nARSENAL EXIT',
                    textWidthBasis: TextWidthBasis.parent,
                      softWrap: true,
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor
                            ),),

                            SizedBox(height: 8,),

            Text('Martin Odegaard penned a heartfelt goodbye message to\nArsenal fans after confirming he would return to Real Madrid.',
              style: Theme.of(context).textTheme.bodyText1,)
              ],
                ),
              ],
            ),

            SizedBox(height: 16,),

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
                Container(
                  height: 24,
                  width: 120,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Color(0xFFBDBDBD),
                          width: 1
                        )
                        )
                      )),
                ),
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
    );
  }
}

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({ Key? key }) : super(key: key);

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
                        Text('Name',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white
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
    );
  }
}