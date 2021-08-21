import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountVerification extends StatefulWidget {
  const AccountVerification({ Key? key }) : super(key: key);

  @override
  _AccountVerificationState createState() => _AccountVerificationState();
}

class _AccountVerificationState extends State<AccountVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text('Verify My Account',
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

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(color: Color(0xFFE5E5E5),),
            SizedBox(height: 24,),

            Text('Account Verification',
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(
              height: 12,
            ),

            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF3A5670),
              ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                      'Email',
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(
                      height: 12,
                    ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).backgroundColor
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      alignment: Alignment.centerLeft,
                      padding: MaterialStateProperty.all(EdgeInsets.all(16))
                    ),
                    onPressed: (){},
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email not Verified',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white,),),
                              Text('tap here to verify your email',
                                style: GoogleFonts.inter(
                                  fontSize: 8,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white,)),
                            ],
                          ),
                        ),

                        Icon(
                                Icons.email_rounded,
                                color: Colors.white,
                              )
                      ],
                    )),
                ),

                SizedBox(
                      height: 32,
                    ),

                Text(
                      'Bank Account',
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).backgroundColor),
                      child: TextButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              alignment: Alignment.centerLeft,
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.all(16))),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Bank Details',
                                      style: GoogleFonts.inter(
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text('tap here to verify your Bank Details',
                                        style: GoogleFonts.inter(
                                          fontSize: 8,
                                          // fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.monetization_on_rounded,
                                color: Colors.white,
                              )
                            ],
                          )),
                    )
              ],
            )
            ),

            SizedBox(
              height: 32,
            ),

            
          ],
        ),
      ),
    );
  }
}