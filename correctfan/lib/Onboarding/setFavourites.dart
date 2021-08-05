import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SetFavourite extends StatefulWidget {
  // const SetFavourite({ Key? key }) : super(key: key);

  @override
  _SetFavouriteState createState() => _SetFavouriteState();
}

class _SetFavouriteState extends State<SetFavourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        centerTitle: true,
        toolbarHeight: 120,
        title: SvgPicture.asset('assets/images/cflettermark.svg', width: 120,),
        // bottom: ,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(16),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Choose your favorite Club',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w800
                ),),
                TextButton(
                  onPressed: () => Navigator.of(context).pushNamed('follow'),
                  child: Text('Skip>',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationThickness: 3,
                      decorationStyle: TextDecorationStyle.solid,
                      fontSize: 12
                    ),
                  ),)
                ]
            ),),)
        ),

        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text('*Required',
              style: GoogleFonts.inter(
                fontSize: 12,
                color: Colors.red
              ),),
              
            Padding(
              padding: const EdgeInsets.all(32),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    style: BorderStyle.solid,
                    width: 1,
                    color: Color(0xFFBDBDBD)
                  )
                  ),
                height: 406,
                child: ListView.separated(
                  itemBuilder: (x, index) => Club(),
                  itemCount: 24,
                  separatorBuilder: (x, index) => Divider(
                    thickness: 1,
                    color: Color(0xFFBDBDBD),
                    ),
                  ),
              ),
            ),
            
          Button(
            label: 'Continue',
            onPressed: () => Navigator.pushNamed(context, 'follow'),)
          ],
        )
    );
  }
}