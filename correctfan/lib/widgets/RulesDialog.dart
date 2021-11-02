// import 'package:correctfan/constants/ui.dart';
// import 'package:flutter/material.dart';

// speed50Rules(context) {
//   return showDialog(
//     context: context,
//     builder: (context) {
//       return AlertDialog(
      
//         content: DefaultTabController(
//           length: 2,
//           child: Container(
//             child: Column(
//               children: [
//                 TabBar(tabs: [
//                   Tab(child: Text('Contest Rules'),),
//                   Tab(child: Text('Winnings Breakdown'))
//                 ]),
//                 TabBarView(
//                   children: [
//                     Rules(),
//                     WinningsBreakdown()
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         )
//       );
//     }
//   );
// }



// class Rules extends StatelessWidget {
//   const Rules({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: white,
//       padding: EdgeInsets.all(16),
//       margin:   EdgeInsets.all(12),
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             // header
//             Text('Eligibility', style: AppTheme.headline4(context, grey, FontWeight.bold),),
//             // body
//             Expanded(
//               flex: 1,
//               child: Text(
//               'You must be 18 years of age or over as well as to make a deposit or play in any contest with an entry fee or prize.',
//               style: AppTheme.headline3(context, black),
//               ),
//             ),

//             // header
//           Text(
//             'Entries',
//             style: AppTheme.headline4(context, grey, FontWeight.bold),
//           ),
//           // body
//           Expanded(
//             flex: 1,
//             child: Text(
//               'All contests have limits on the maximum number of entries that a single user may submit. This contest limits a single user to a MAXIMUM OF THREE (3) entries.',
//               style: AppTheme.headline3(context, black),
//             ),
//           ),

//           // header
//           Text(
//             'Identity',
//             style: AppTheme.headline4(context, grey, FontWeight.bold),
//           ),
//           // body
//           Expanded(
//             flex: 1,
//             child: Text(
//               'If CorrectFan determines that you have used, opened, or managed more than one account, any or all of your accounts may be suspended or deactivated and any rewards you may have won will be withheld and subsequently withdrawn.',
//               style: AppTheme.headline3(context, black),
//             ),
//           ),

//           // header
//           Text(
//             'Cancelation, Postponement & Rescheduling',
//             style: AppTheme.headline4(context, grey, FontWeight.bold),
//           ),
//           // body
//           Expanded(
//             flex: 1,
//             child: Text(
//               'In the event that a match is canceled, postponed, or a match is rescheduled to a time outside of the original MatchDay Game Period, the match will be disabled from the Game Lobby and players listed to play in that match will not be eligible for points accumulation.',
//               style: AppTheme.headline3(context, black),
//             ),
//           ),
//           ],
//         )
        
//       ),
//     );
//   }
// }

// class WinningsBreakdown extends StatelessWidget {
//   const WinningsBreakdown({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: white,
//     );
//   }
// }