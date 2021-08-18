import 'package:correctfan/main/mainPage.dart';
import 'package:correctfan/services/flutterfire.dart';
import 'package:correctfan/widgets.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  // const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();

  bool checked = false;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _confirmpassword.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Theme.of(context).backgroundColor;
    Color primaryColor = Theme.of(context).primaryColor;

    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SingleChildScrollView(
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
                    style:
                        GoogleFonts.inter(color: Colors.white, fontSize: 12)),
                SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 52.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _email,
                        style: GoogleFonts.inter(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person, color: Colors.white),
                          isCollapsed: true,
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          hintText: 'Email',
                          hintStyle: GoogleFonts.inter(
                              fontSize: 12, color: Colors.white),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                        ),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: _password,
                        style: GoogleFonts.inter(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          prefixIcon: Icon(Icons.lock, color: Colors.white),
                          isCollapsed: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                          ),
                          hintText: 'Password',
                          hintStyle: GoogleFonts.inter(
                              fontSize: 12, color: Colors.white),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                        ),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: _confirmpassword,
                        style: GoogleFonts.inter(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          prefixIcon: Icon(Icons.lock, color: Colors.white),
                          isCollapsed: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                          ),
                          hintText: 'Confirm Password',
                          hintStyle: GoogleFonts.inter(
                              fontSize: 12, color: Colors.white),
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
                          Switch(
                              activeColor: Color(0xFF092C4C),
                              value: false,
                              onChanged: (bool newv) {})
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
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: primaryColor,
                        value: checked,
                        onChanged: (value) {
                          setState(() {
                            checked = value!;
                          });
                        },
                        checkColor: Colors.white,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                            'I agree to the Terms of Service, Payments\nTerms of Service, Privacy Policy, and I’m\nat least 18 years of age.'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Button(
                  label: 'Sign up',
                  onPressed: () async{
                      await authService.createUserWithEmailAndPassword(
                        _email.text.trim(), _password.text.trim());
                      }
                    ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Dont have an account yet?',
                  style: GoogleFonts.inter(fontSize: 12, color: Colors.white),
                ),
                TextButton(
                    onPressed: () => Navigator.of(context).pushNamed('signIn'),
                    child: Text(
                      'sign in to win cash daily'.toUpperCase(),
                      style: Theme.of(context).textTheme.caption,
                    ))
              ]),
        ),
      ),
    );
  }
}
