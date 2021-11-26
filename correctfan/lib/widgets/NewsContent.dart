import 'package:correctfan/constants/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';


  

  Widget newsFeed(BuildContext context, String title, String? body) {

    String bodyText() {
    if (body == null) {
      return 'Details Shortly';
    } else {
      return body;
    }
  }

    return Card(
      elevation: 8,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Row(
                    children: [
                      // CircleAvatar(
                      //   backgroundColor: primary,
                      //   child: Text('A'),
                      // ),
                      // SizedBox(
                      //   width: 4,
                      // ),
                      Text(title,
                          textWidthBasis: TextWidthBasis.parent,
                          
                          // softWrap: true,
                          style: AppTheme.headline4(context, primary, FontWeight.bold))
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    bodyText(),
                    style: AppTheme.headline5(context, black),
                  ),
                  Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      // Text(
                      //   '2hrs ago',
                      //   style: GoogleFonts.inter(
                      //     color: Colors.grey[300],
                      //     fontStyle: FontStyle.italic,
                      //   ),
                      // )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                  height: 160,
                  width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(50, 229, 229, 229)),
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/images/logo.svg',
                      color: Color.fromARGB(100, 229, 229, 229),
                    ),
                  )),
              SizedBox(
                height: 16,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     // Container(
              //     //   height: 24,
              //     //   width: 120,
              //     //   child: TextField(
              //     //     decoration: InputDecoration(
              //     //       border: OutlineInputBorder(
              //     //         borderRadius: BorderRadius.circular(8),
              //     //         borderSide: BorderSide(
              //     //           style: BorderStyle.solid,
              //     //           color: Color(0xFFBDBDBD),
              //     //           width: 1
              //     //         )
              //     //         )
              //     //       )),
              //     // ),
              //     Row(
              //       children: [Icon(Icons.message), Text('data')],
              //     ),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [Icon(Icons.favorite), Text('data')],
              //     ),
                // ],),
            ]),
      ),
    );
  }

