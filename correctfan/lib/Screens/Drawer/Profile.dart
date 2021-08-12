import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left_sharp),
          onPressed: () => Navigator.pop(context)
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 56,
                  backgroundImage: AssetImage('assets/images/correctfanIcon.png')
                ),
                Positioned(
                  bottom: 8,
                  right: 0,
                  child: Container(
                    width: 24,
                    height: 24,
                    child: Icon(Icons.camera,
                    color: Colors.white,
                    size: 16,),
                    decoration: BoxDecoration(
                      color: Color(0xFF003E75),
                      borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  right: 42,
                  child: Text('Name',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                    ),),
                  )
                ]
              ),
              SizedBox(height: 12),

              Text('@UserName',
                style: GoogleFonts.inter(
                  fontSize: 12,
                  color: Colors.white
                ),
              ),
              
              SizedBox(height: 12),

              Divider(
                color: Colors.white,
                indent: 32,
                endIndent: 32,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   SizedBox(width: 124,),
                    Expanded(
                      flex: 1,
                      child: Text('Profile Info',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),),
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.edit_outlined,
                        color: Colors.white,),
                      backgroundColor: Color(0xFF003E75),
                      mini: true,
                      )
                  ],
                ),
              ),

              Container(
                height: 420,
                padding: EdgeInsets.all(32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    // Phone Number
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mobile Number', style: Theme.of(context).textTheme.subtitle1,),
                        Text('Email', style: Theme.of(context).textTheme.subtitle1,),
                        Text('Gender', style: Theme.of(context).textTheme.subtitle1,),
                        Text('Date Of Birth', style: Theme.of(context).textTheme.subtitle1,),
                        Text('Address', style: Theme.of(context).textTheme.subtitle1,),
                        Text('Password', style: Theme.of(context).textTheme.subtitle1,),
                        // Spacer(
                        //   flex: 1
                        // ),
                        
                      ],
                    ),

                    // Email
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('+234 9384798345', style: Theme.of(context).textTheme.subtitle2),
                        Text('correctfan@mail.com', style: Theme.of(context).textTheme.subtitle2),
                        Text('Male', style: Theme.of(context).textTheme.subtitle2),
                        Text('01-10-2005', style: Theme.of(context).textTheme.subtitle2),
                        Text('234 Nigeria seabed', style: Theme.of(context).textTheme.subtitle2),
                        Text('*************', style: Theme.of(context).textTheme.subtitle2),
                      ],
                    ),

                   
                  ],
                ),
              )
              
            ]
        ),
      ),
    );
  }
}