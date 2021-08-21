import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankVerification extends StatefulWidget {
  const BankVerification({ Key? key }) : super(key: key);

  @override
  _BankVerificationState createState() => _BankVerificationState();
}

class _BankVerificationState extends State<BankVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text('Bank Account Verification',
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
                      'Confirm Your Bank Details',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 16,),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFF828282),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Account Name: ',
                        labelStyle: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 12,
                        )
                      ),
                    )
                  ),

                  SizedBox(
                      height: 16,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Color(0xFF828282),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Account Number: ',
                              labelStyle: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 12,
                              )),
                        )),

                        SizedBox(
                      height: 16,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Color(0xFF828282),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Bank: ',
                              labelStyle: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 12,
                              )),
                        )),

                        SizedBox(
                      height: 24,
                    ),

                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 42),
                          child: Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (bool) {},
                              ),
                              Expanded(
                                child: Text(
                                  'I confirm the above account name is mine and deposits be made to the account number above. ',
                                  style: GoogleFonts.inter(
                                      color: Colors.white, fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 16,
                        ),

                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.green),
                            foregroundColor: MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 42, vertical: 8))
                          ),
                          onPressed: () {},
                          child: Text('Verify'),
                        ),
                      ],
                    )
                ],
              ),
            ),

          ])
      )
    );
  }
}