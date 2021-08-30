import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveScoreDetail extends StatefulWidget {
  const LiveScoreDetail({Key? key}) : super(key: key);

  @override
  _LiveScoreDetailState createState() => _LiveScoreDetailState();
}

class _LiveScoreDetailState extends State<LiveScoreDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.chevron_left_outlined)),
          backgroundColor: Color(0xFFF3F3F3),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Theme.of(context).primaryColor,
          ),
          title: Image.asset('assets/images/Group 39.png'),
          centerTitle: true),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color(0xFFF3F3F3),
        child: Column(
          children: [
            Divider(
              color: Color(0xFFE5E5E5),
              indent: 16,
              endIndent: 16,
            ),
            
            Card(
              margin: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      SvgPicture.asset('assets/images/pl.svg'),
                      Text('MATCHDAY 35 of 38',
                        style: GoogleFonts.inter(
                          fontSize: 8,
                          fontWeight: FontWeight.w900
                        ),
                        ),

                    ]),
                    Divider(
                      color: Theme.of(context).primaryColor,
                      indent: 16,
                      endIndent: 16,
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(),
                            SizedBox(height: 4,),
                            Text('Club',
                              style: GoogleFonts.inter(
                                color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 8,)
                            )
                          ],
                        ),
                        SizedBox(width: 24),
                        Text('1 : 2',
                          style: GoogleFonts.lekton(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(
                          width: 24,
                        ),
                        Column(
                          children: [
                            CircleAvatar(),
                            SizedBox(
                              height: 4,
                            ),
                            Text('Club',
                                style: GoogleFonts.inter(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 8,
                                )),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 200,
                      child: Slider(
                      min: 0,
                      max: 100,
                      activeColor: Colors.green,
                      value: 32,
                      onChanged: (double x) {},
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
