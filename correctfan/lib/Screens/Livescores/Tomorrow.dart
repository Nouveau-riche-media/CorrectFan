import 'package:correctfan/Controllers/matchesController.dart';
import 'package:correctfan/main.dart';
import 'package:correctfan/constants/controllers.dart';
import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/widgets/LiveScores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class Tomorrow extends StatefulWidget {
  const Tomorrow({ Key? key }) : super(key: key);

  @override
  _TomorrowState createState() => _TomorrowState();
}

// final TomorrowMatchesController tomorrowFixtures = Get.find();

class _TomorrowState extends State<Tomorrow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          elevation: 4,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/images/pl.svg'),
                  SizedBox(height: 8),
                  Text('MATCHDAY 35 of 38',
                      style: GoogleFonts.inter(
                        color: Color(0xFF828282),
                        fontWeight: FontWeight.w900,
                        fontSize: 10,
                      )),
                  SizedBox(height: 8),
                  Divider(
                    color: Theme.of(context).backgroundColor,
                    indent: 8,
                    endIndent: 8,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    height: height(2, context) + 32,
                    child: Obx(() => ListView.separated(
                        itemBuilder: (context, index) =>
                            LiveScores(tomorrowController.fixtures[index]),
                        separatorBuilder: (index, x) => Divider(
                              color: Theme.of(context).primaryColor,
                            ),
                        itemCount: tomorrowController.fixtures.length)),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
