// import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsDetail extends StatefulWidget {
  const NewsDetail({ Key? key }) : super(key: key);

  @override
  _NewsDetailState createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.chevron_left_outlined, size: 24,)),
        title: Image.asset('assets/images/Group 39.png',
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFFF3F3F3),
      ),
      body:Container(
        color: Color(0xFFF3F3F3),
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Divider(color: Colors.white,),
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                ),
                SizedBox(
                    width: 8,
                  ),
                Text('Arsenal'),
                Spacer(
                  flex: 1,
                ),
                Text('data')
              ],
            ),

            SizedBox(
                height: 16,
              ),

              Container(
                  height: 160,
                  width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(50, 229, 229, 229)),
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/images/logo.svg',
                      color: Color.fromARGB(100, 229, 229, 229),
                    ),
                  )),

              SizedBox(
                height: 16,
              ),

              Text(
                'MARTIN ODEGAARD CONFIRMS ARSENAL EXIT',
                textWidthBasis: TextWidthBasis.parent,
                softWrap: true,
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),

              SizedBox(height: 8,),
    
              Text('Martin Odegaard penned a heartfelt goodbye message to Arsenal fans after confirming he would return to Real Madrid.Over the last month, Martin Odegaard first told the media that Real Madrid have made it clear they want him back, before posting a thank-you message to Arsenal on his Instagram account – a message that very much seemed like a farewell.\n\nThe door “remains open”, and Arsenal might wait until August to see if Odegaard gets game time before potentially making another move\.\n\nThere’s obviously very little certainty here. Real Madrid might throw Odegaard into the mix immediately and end any potential hopes of a transfer. Arsenal might not be the only club to bid for him if he’s available. Real might price the Gunners out.',

                style: Theme.of(context).textTheme.bodyText1,
                ),

                SizedBox(
                height: 16,
              ),

              Row(
                children: [

                  Container(
                    height: 24,
                    width: MediaQuery.of(context).size.width / 2,
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

                  SizedBox(
                    width: 16,
                  ),

                  Row(
                  children: [Icon(Icons.message), Text('data')],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Row(
                    children: [Icon(Icons.favorite), Text('data')],
                  ),
                ],
              ),
          ],
        ),
      )
    );
  }
}