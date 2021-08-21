import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({ Key? key }) : super(key: key);

  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text('My Wallet',
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
              onTap: () => Navigator.of(context).pushNamed('Profile'),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/correctfanIcon.png'),
                
              ),
            ),
          )
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Divider(
              color: Colors.white,
            ),

            SizedBox(height: 12),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Balance',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),

                  SizedBox(height: 4,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFF003E75)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('\$50',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 32
                          ),
                          ),
                        Text('View Transactions',
                          style: GoogleFonts.inter(
                            color: Color(0xFF828282),
                            fontWeight: FontWeight.w800,
                            fontSize: 10
                          ),
                          ),
                      ],
                    ),


                    Column(
                      children: [
                        Icon(Icons.account_balance_wallet_rounded, color: Colors.white,),
                        SizedBox(height: 4,),
                        Text('AddFunds',
                          style: GoogleFonts.inter(
                            color: Color(0xFF828282),
                            fontWeight: FontWeight.w800,
                            fontSize: 10,))
                      ],
                    )
                  ],),
                )
              ],
            ),

            SizedBox(height: 24,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Reward Bank',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),

                  SizedBox(height: 4,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFF003E75)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('\$500',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 32
                          ),
                          ),
                        Text('Make Withdrawals',
                          style: GoogleFonts.inter(
                            color: Color(0xFF828282),
                            fontWeight: FontWeight.w800,
                            fontSize: 10
                          ),
                          ),
                      ],
                    ),


                    Column(
                      // textDirection: TextDirection.ltr,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Complete your account\nVerification to make withdrawals',
                          style: GoogleFonts.inter(
                            fontSize: 8,
                            color: Colors.white
                          ),),
                        // SizedBox(height: 4,),
                        TextButton(
                          onPressed: () {},
                          child: Text('Verify Accounts'),
                              style: ButtonStyle(
                                textStyle: MaterialStateProperty.all(
                                  GoogleFonts.inter(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 10,),),
                                foregroundColor: MaterialStateProperty.all(Colors.white),
                                backgroundColor: MaterialStateProperty.all(Colors.red),

                              ),
                        )
                      ],
                    )
                  ],),
                ),
              ],
            ),

            // SizedBox(height: 32,),

            Container(
              margin: EdgeInsets.only(top: 32,),
              height: MediaQuery.of(context).size.height / 2,
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
            ]
        ),
      ),
    );
  }
}