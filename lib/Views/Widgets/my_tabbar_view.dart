// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:wrestling_news_app/Controller/EventController.dart';
// import 'package:wrestling_news_app/Controller/MatchController.dart';
// import 'package:wrestling_news_app/Views/Pages/Export.dart';
//
// import 'event_card.dart';
//
// class MyTabBarView extends StatefulWidget {
//   MyTabBarView({
//     Key? key,
//     required this.tabController,
//   }) : super(key: key);
//
//   final TabController tabController;
//
//   @override
//   State<MyTabBarView> createState() => _MyTabBarViewState();
// }
//
// class _MyTabBarViewState extends State<MyTabBarView> {
//   // EventController eventController = EventController();
//   MatchController matchController = MatchController();
//
//   bool _init = true;
//
//   bool _isLoadingEvents = false;
//   var imageList = [
//     'https://i.ytimg.com/vi/j4ErmBDTOJo/maxresdefault.jpg',
//     'https://i.ytimg.com/vi/j4ErmBDTOJo/maxresdefault.jpg',
//     'https://i.ytimg.com/vi/j4ErmBDTOJo/maxresdefault.jpg',
//     'https://i.ytimg.com/vi/j4ErmBDTOJo/maxresdefault.jpg',
//     'https://i.ytimg.com/vi/j4ErmBDTOJo/maxresdefault.jpg',
//     'https://i.ytimg.com/vi/j4ErmBDTOJo/maxresdefault.jpg',
//     'https://i.ytimg.com/vi/j4ErmBDTOJo/maxresdefault.jpg',
//     'https://i.ytimg.com/vi/j4ErmBDTOJo/maxresdefault.jpg',
//     'https://i.ytimg.com/vi/j4ErmBDTOJo/maxresdefault.jpg',
//     'https://i.ytimg.com/vi/j4ErmBDTOJo/maxresdefault.jpg',
//   ];
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
//
//   @override
//   void didChangeDependencies() async {
//     if (_init) {
//       _isLoadingEvents =
//       await Provider.of<EventController>(context).getEvents();
//
//       setState(() {});
//     }
//     _init = false;
//     super.didChangeDependencies();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final events = Provider.of<EventController>(context).events;
//     double width = MediaQuery.of(context).size.width * 0.95;
//     double height = MediaQuery.of(context).size.height;
//     // double makeHeight(){
//     //   return
//     // }
//     return ListView(
//       children: [
//         const SizedBox(
//           height: 20,
//         ),
//         Container(
//           margin: const EdgeInsets.symmetric(horizontal: 10),
//           child: TabBar(
//             indicator: BoxDecoration(
//               borderRadius: BorderRadius.circular(50),
//               color: Colors.redAccent,
//             ),
//             labelPadding: const EdgeInsets.only(
//               left: 25,
//               right: 25,
//               top: 0,
//               bottom: 0,
//             ),
//             isScrollable: true,
//             labelColor: Colors.white,
//             unselectedLabelColor: Colors.redAccent,
//             controller: widget.tabController,
//             tabs: const [
//               Tab(text: 'Events'),
//               Tab(text: 'Matches'),
//               Tab(text: 'Results'),
//               Tab(text: 'Rosters'),
//             ],
//           ),
//         ),
//         Container(
//           width: double.infinity,
//           height: 800,
//           child: TabBarView(
//             controller: widget.tabController,
//             children: [
//               // Events
//               Container(
//                 height: 200,
//                 child: ListView.builder(
//                   physics: const ClampingScrollPhysics(),
//                   itemCount: events.length,
//                   itemBuilder: (ctx, i) => EventCard(
//                     id: events[i].id as int,
//                     date: events[i].date as String,
//                     event_logo: events[i].eventLogo as String,
//                     event_name: events[i].eventName as String,
//                     location: events[i].location as String,
//                   ),
//                 ),
//               ),
//
//               SingleChildScrollView(
//                 scrollDirection: Axis.vertical,
//                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                 child: Column(
//                   children: const [
//                     MatchCard(
//                       matchTitle: "asdads",
//                       match: "asdasd",
//                     ),
//                   ],
//                 ),
//               ),
//               // Matches
//               Container(
//                 height: 600,
//
//                 child: const Center(
//                   child: Text('Coming Soon!'),
//                 ),
//
//
//
//               ),
//               // Results
//               // Text('This is tab 3'),
//               // Rosters
//               // RosterPageCard(imageList: imageList, firstNameList: firstNameList, lastNameList: lastNameList, width: width, index: index)
//               Container(
//                 margin: const EdgeInsets.only(top: 15),
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [
//                       Color(0xffD5E5D6),
//                       Color(0xff83ABB0),
//                     ],
//                     stops: [0.5, 1],
//                   ),
//                 ),
//                 child: ListView.builder(
//                   physics: ClampingScrollPhysics(),
//                   itemCount: imageList.length,
//                   itemBuilder: (context, index) {
//                     return RosterPageCard(
//                       imageList: imageList,
//                       firstNameList: firstNameList,
//                       width: width,
//                       lastNameList: lastNameList,
//                       index: index,
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }