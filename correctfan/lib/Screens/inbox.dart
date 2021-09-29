import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Inbox extends StatefulWidget {
  const Inbox({ Key? key }) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit_rounded, color: Colors.white),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: SvgPicture.asset(
            'assets/images/cflettermark.svg',
            width: 120,
          ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(42),
          child: Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Inbox',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          )),
                        Text('you have 10 unread messages',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(70, 255, 255, 255)
                          ))
                      ]),
                  )),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.filter_list, color: Colors.white))
              ]
            ),
          ),
        )
      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 32),
        height: MediaQuery.of(context).size.height - 32,
        child: ListView.builder(
          itemBuilder:
          (context, index) => InboxMessage(),
          itemCount: 12
        ),
      ),
    );
  }
}