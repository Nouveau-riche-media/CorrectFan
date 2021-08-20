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
        title: Text('Welcome Winner!',
          style: GoogleFonts.inter(
              color: Color(0xFF4F4F4F),
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.attachment),
              color: Colors.white,),
            
            Container(
              color: Color.fromARGB(30, 196, 196, 196),
              child: TextField(
                decoration: InputDecoration(
                  border: null,
                  hintText: 'Type in your message here',
                  hintStyle: GoogleFonts.inter(
                    fontSize: 12,
                    color: Colors.white,
                    fontStyle: FontStyle.italic
                  )
                  ),
              ),
            )
          ],
        ),
        
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: ListView.builder(
          itemBuilder: (x, index) {
            return Container();
          })
      )
    );
  }
}