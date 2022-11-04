// import 'package:flutter/material.dart';
//
// import 'Export.dart';
//
// class RosterPage extends StatefulWidget {
//   const RosterPage({Key? key}) : super(key: key);
//
//   @override
//   State<RosterPage> createState() => _RosterPageState();
// }
//
// class _RosterPageState extends State<RosterPage> {
//   // var imageList = [
//   //   'assets/images/hell-in-a-cell.jpg',
//   //   'assets/images/money-in-the-bank.jpg',
//   //   'assets/images/royal-rumble.jpg',
//   //   'assets/images/summer-slam.jpg',
//   //   'assets/images/wrestlemania.jpg',
//   //   'assets/images/hell-in-a-cell.jpg',
//   //   'assets/images/money-in-the-bank.jpg',
//   //   'assets/images/royal-rumble.jpg',
//   //   'assets/images/summer-slam.jpg',
//   //   'assets/images/wrestlemania.jpg',
//   // ];
//
//   var firstNameList = [
//     'Shawn',
//     'Shawn',
//     'Shawn',
//     'Shawn',
//     'Shawn',
//     'Shawn',
//     'Shawn',
//     'Shawn',
//     'Shawn',
//     'Shawn',
//   ];
//
//   var lastNameList = [
//     'Michael',
//     'Michael',
//     'Michael',
//     'Michael',
//     'Michael',
//     'Michael',
//     'Michael',
//     'Michael',
//     'Michael',
//     'Michael',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width * 0.95;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xffD5E5D6),
//         elevation: 0,
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color(0xffD5E5D6),
//               Color(0xff83ABB0),
//             ],
//             stops: [0.5, 1],
//           ),
//         ),
//         child: ListView.builder(
//           itemCount: imageList.length,
//           itemBuilder: (context, index) {
//             return RosterPageCard(
//               imageList: imageList,
//               firstNameList: firstNameList,
//               width: width,
//               lastNameList: lastNameList,
//               index: index,
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
