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
              onTap: () => Navigator.of(context).popAndPushNamed('Profile'),
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
                )
              ],
            )
            ]
        ),
      ),
    );
  }
}