import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InboxDetails extends StatefulWidget {
  const InboxDetails({ Key? key }) : super(key: key);

  @override
  _InboxDetailsState createState() => _InboxDetailsState();
}

class _InboxDetailsState extends State<InboxDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.chevron_left_outlined), onPressed: () => Navigator.pop(context), color: Theme.of(context).primaryColor,),
        centerTitle: true,
        title: Text('Welcome Winner!',
          style: GoogleFonts.inter(
              color: Color(0xFF4F4F4F),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),


      body: Column(
        children: [
          Divider(color: Color(0xFFE5E5E5),),
          Flexible(
            flex: 1,
            child: Container(
              height: MediaQuery.of(context).size.width - 120,
              child: ListView.builder(
                itemBuilder: (x, index) {
                  return Container();
                }),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.attachment),
                color: Colors.white,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16)
                ),
                // color: Color.fromARGB(30, 196, 196, 196),
                width: MediaQuery.of(context).size.width - 120,
                padding: EdgeInsets.only(
                  left: 8,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(30, 196, 196, 196),
                      border: null,
                      hintText: 'Type in your message here',
                      hintStyle: GoogleFonts.inter(
                          fontSize: 12,
                          color: Colors.white,
                          fontStyle: FontStyle.italic)),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.send, color: Colors.white),
              )
            ],
          ),
        ],
      )
    );
  }
}