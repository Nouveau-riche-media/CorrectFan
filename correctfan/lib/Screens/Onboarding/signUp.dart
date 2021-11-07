import 'package:correctfan/Screens/Onboarding/setFavourites.dart';
import 'package:correctfan/constants/controllers.dart';
import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  // const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formkey = GlobalKey<FormState>();

  bool checked = false;


  @override
  Widget build(BuildContext context) {
    Color backgroundColor = secondary;

    // final authService = Provider.of<AuthService>(context);
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
                  width: width(1, context) - 112,
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
                          style: GoogleFonts.inter(color: black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: width(1, context) - 112,
                  height: 36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: white),
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
                          style: GoogleFonts.inter(color: black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Text('-or-',
                    style:
                        AppTheme.headline5(context, white)),
                SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 52.0),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: authController.email,
                          style: AppTheme.headline4(context, white),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: white)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primary)),
                            prefixIcon: Icon(Icons.person, color: white),
                            isCollapsed: true,
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: white, width: 2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintText: 'Email',
                            hintStyle: AppTheme.headline5(context, white),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                          ),
                        ),

                        SizedBox(height: 16),

                        // Password
                        TextFormField(
                          controller: authController.password,
                          validator: (password) {
                            if (password!.length <= 5) {
                              return 'your password cannot be less than 5 characters';
                            }
                          },
                          style: AppTheme.headline4(context, white),
                          obscureText: true,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: white)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primary)),
                            alignLabelWithHint: true,
                            prefixIcon: Icon(Icons.lock, color: white),
                            isCollapsed: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                            ),
                            hintText: 'Password',
                            hintStyle: AppTheme.headline5(context, white),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                          ),
                        ),

                        SizedBox(height: 16),

                        TextFormField(
                          controller: authController.confirmPassword,
                          validator: (confirmPassword) {
                            if (confirmPassword != authController.password.text) {
                              return 'your password doesn\'t match';
                            }
                          },
                          style: AppTheme.headline4(context, white),
                          obscureText: true,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: white)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primary)),
                            alignLabelWithHint: true,
                            prefixIcon: Icon(Icons.lock, color: white),
                            isCollapsed: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: white, width: 2),
                            ),
                            hintText: 'Confirm Password',
                            hintStyle: AppTheme.headline5(context, white),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                          ),
                        ),
                      ],
                    ),
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
                            style: AppTheme.headline7(context, white),
                          ),
                          Switch(
                              activeColor: secondary,
                              value: false,
                              onChanged: (bool newv) {})
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Your Password?',
                            style: AppTheme.headline7(context, white)
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
                        activeColor: primary,
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
                  onPressed: () {
                        if (_formkey.currentState!.validate() ) {
                          authController.signUp();
                          Get.to(SetFavourite());
                          }
                      }
                    ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Already have an Account?',
                  style: GoogleFonts.inter(fontSize: 12, color: Colors.white),
                ),
                TextButton(
                    onPressed: () => Get.toNamed('signIn'),
                    child: Text(
                      'sign in to win cash daily'.toUpperCase(),
                      style: AppTheme.headline5(context, blue!, FontWeight.bold),
                    ))
              ]),
        ),
      ),
    );
  }
}
