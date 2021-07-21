import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Follow extends StatefulWidget {
  const Follow({ Key? key }) : super(key: key);

  @override
  _FollowState createState() => _FollowState();
}

class _FollowState extends State<Follow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.chevron_left_rounded),),
        centerTitle: true,
        toolbarHeight: 120,
        title: SvgPicture.asset('assets/images/cflettermark.svg',width: 120,),
        // bottom: ,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(16),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            alignment: Alignment.centerLeft,
            child: Text('Follow Other Clubs',
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w800
            ),),),)
        ),
      body:Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  itemBuilder: (x, index) => Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Club()),
                      Checkbox(
                        value: false,
                        onChanged: (bool) {},
                        checkColor: Colors.black, ),
                    ],
                  ),
                  itemCount: 24,
                  separatorBuilder: (x, index) => Divider(
                    thickness: 1,
                    color: Color(0xFFBDBDBD),
                    ),
                  ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (bool) {},
                    checkColor: Colors.black, ),
                  Text('I agree to receiving notifications about club news,\nupdates, and promotional information.',
                    style: GoogleFonts.inter(
                      fontSize: 12
                    ))
                  ]
              ),
            ),
            
          Button(
            label: 'Complete Registration',
            onPressed: () => Navigator.pushNamed(context, ''),)
          ],
        )
    );
  }
}