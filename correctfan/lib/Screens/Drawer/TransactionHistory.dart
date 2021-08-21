import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({ Key? key }) : super(key: key);

  @override
  _TransactionHistoryState createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text('Transaction History',
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w700
          ),
          ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.chevron_left_sharp),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'Profile'),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/correctfanIcon.png'),
                
              ),
            ),
          )
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,


      body: Column(
        children: [
          Divider(color: Color(0xFFE5E5E5), endIndent: 16, indent: 16,),

          Container(
            clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.only(left: 16, top: 32, right: 16),
                  height: MediaQuery.of(context).size.height - 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFF3A5670),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0,),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text('Recent Transactions',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                            ),

                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search, color: Colors.white,),
                            )
                          ],
                        ),
                      ),

                      Container(
                        color: Theme.of(context).backgroundColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(onPressed: () {},
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(Colors.white),
                              textStyle: MaterialStateProperty.all(
                                GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 8
                                )
                              )
                            ),
                            child: Row(
                                  children: [
                                    Text('Transaction Ref'),
                                    Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      size: 16,
                                    )
                                  ],
                                )),


                            TextButton(onPressed: () {},
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(Colors.white),
                              textStyle: MaterialStateProperty.all(
                                GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 8
                                )
                              )
                            ),
                            child: Row(
                                  children: [
                                    Text('Amount'),
                                    Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      size: 16,
                                    )
                                  ],
                                )),

                            TextButton(onPressed: () {},
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(Colors.white),
                              textStyle: MaterialStateProperty.all(
                                GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 8
                                )
                              )
                            ),
                            child: Row(
                              children: [
                                Text('Description'),
                                Icon(Icons.keyboard_arrow_down_rounded,size: 16,)
                              ],
                            )),
                          ],
                        ),
                      ),

                      Flexible(
                          flex: 1,
                          child: Container(
                            // height: MediaQuery.of(context).size.height / 2 ,
                            child: ListView.builder(
                              itemCount: 24,
                              itemBuilder: (x, index) => TransactionInfo(),
                            ),
                          ))
                    ],
                  )
                ),
        ],
      ),
    );
  }
}