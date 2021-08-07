import 'package:correctfan/services/auth.dart';
import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';




class SignIn extends StatefulWidget {
  // const SignIn({ Key? key }) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  // final AuthService _auth = AuthService();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {

    Color backgroundColor = Theme.of(context).backgroundColor;


    return Scaffold(  
      backgroundColor: backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/logo.svg',
                width: 42,),
                SvgPicture.asset('assets/images/cflettermark.svg',
                width: 120,),
        
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
                      ImageIcon(AssetImage('assets/images/google.png')),
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
                      ImageIcon(AssetImage('assets/images/facebook.png')),
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
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            isCollapsed: true,  
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2
                                ),
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
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            prefixIcon: Icon(Icons.lock),
                            isCollapsed: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2
                                ),
                              ),
                            hintText: 'Password',
                            hintStyle: GoogleFonts.inter(
                              fontSize: 12,
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            
                          ),),
                      ],
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 52.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Remember Me',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 8
                                ),),
                          ],
                        ),
        
                          TextButton(
                            onPressed: () {},
                            child: Text('Forgot Your Password?',
                              style: GoogleFonts.inter(
                                fontSize: 8,
                                color: Colors.white,
                              ),))
                      ],
                    ),
                  ),
        
                  SizedBox(height: 32,),
        
                  Button(
                    onPressed: () => Navigator.of(context).pushNamed('favourites'),
                    label: 'Sign in'),
        
                    SizedBox(height: 16,),
        
                  Text(
                    'Dont have an account yet?', 
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Colors.white
                    ),),
        
                  TextButton(
                    onPressed: () => Navigator.of(context).pushNamed('signUp'),
                    child: Text('sign up to win cash daily'.toUpperCase(),
                      style: Theme.of(context).textTheme.caption,)
                  )
        
              ]),
          ),
        ),
      )
    );
  }
}