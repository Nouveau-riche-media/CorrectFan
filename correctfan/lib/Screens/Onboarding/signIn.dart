// ignore: import_of_legacy_library_into_null_safe

import 'package:correctfan/constants/controllers.dart';
// import 'package:correctfan/services/flutterfire.dart';
import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // TextEditingController _email = TextEditingController();
  // TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Theme.of(context).backgroundColor;

    // final authService = Provider.of<AuthService>(context);
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/logo.svg',
                      width: 42,
                    ),
                    SvgPicture.asset(
                      'assets/images/cflettermark.svg',
                      width: 120,
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Container(
                      height: 36,
                      width: MediaQuery.of(context).size.width - 112,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/google.png',
                              width: 24,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'Connect with Google',
                              style: GoogleFonts.inter(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 112,
                      height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/facebook.png',
                              width: 24,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'Connect with Facebook',
                              style: GoogleFonts.inter(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 32),

                    Text('-or-',
                        style: GoogleFonts.inter(
                            color: Colors.white, fontSize: 12)),
                    SizedBox(height: 32),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 52.0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: authController.email,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              isCollapsed: true,
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: 'Username',
                              hintStyle: GoogleFonts.inter(
                                fontSize: 12,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                            ),
                          ),
                          SizedBox(height: 16),
                          TextFormField(
                            controller: authController.password,
                            obscureText: true,
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              prefixIcon: Icon(Icons.lock),
                              isCollapsed: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                              ),
                              hintText: 'Password',
                              hintStyle: GoogleFonts.inter(
                                fontSize: 12,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                            ),
                          ),
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
                              Text(
                                'Remember Me',
                                style: GoogleFonts.inter(
                                    color: Colors.white, fontSize: 8),
                              ),
                            ],
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Your Password?',
                                style: GoogleFonts.inter(
                                  fontSize: 8,
                                  color: Colors.white,
                                ),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Button(
                      onPressed: () {
                        authController.signIn();
                      },
                      label: 'Sign in'),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Dont have an account yet?',
                      style:
                          GoogleFonts.inter(fontSize: 12, color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed('signUp'),
                        child: Text(
                          'sign up to win cash daily'.toUpperCase(),
                          style: Theme.of(context).textTheme.caption,
                        ))
                  ]),
            ),
          ),
        ));
  }
}
