import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {

    Color backgroundColor = Theme.of(context).backgroundColor;


    return Scaffold(  
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          children: [
            SvgPicture.asset('assets/images/logo.svg'),
            SvgPicture.asset('assets/images/cflettermark.svg'),

            SizedBox(height: 32,),

            Container(
              height: 36,
              width: MediaQuery.of(context).size.width - 112,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text('Connect with Google')
                ],
              ),
              ),

              SizedBox(height: 16,),

              Container(
                width: MediaQuery.of(context).size.width - 112,
                height: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [                  
                  Text('Connect with Facebook')
                ],
              ),
              ),

              SizedBox(height: 32),

              Text('-or-',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 12
                )
                ),

              SizedBox(height: 32),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        isCollapsed: true,  
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          ),
                        hintText: 'Username',
                        hintStyle: GoogleFonts.inter(
                          fontSize: 12,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),),

                      SizedBox(height: 16),

                    TextFormField(

                      obscureText: true,
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        prefixIcon: Icon(Icons.lock),
                        isCollapsed: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          ),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.inter(
                          fontSize: 12,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        
                      ),),
                  ],
                ),
              )


          ]),
      )
    );
  }
}