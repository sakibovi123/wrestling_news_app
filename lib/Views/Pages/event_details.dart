import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/EventController.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({Key? key}) : super(key: key);
  static const routeName = '/event-details';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final eventDetails =
    Provider.of<EventController>(context).getEventDetails(id as int);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            title: Text('Event Details'),
            centerTitle: true,
            toolbarHeight: 40.0,
            backgroundColor: Colors.grey,
          ),
        ],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 120.0,
                width: double.infinity,
                color: Colors.brown.shade300,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: 60,
                      width: 120,
                      child: Image.network(
                          'https://wrestlingdb.pythonanywhere.com${eventDetails.eventLogo}'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            eventDetails.eventName as String,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text('Pay Per View'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // upper section finishes here and next section starts here
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: eventDetails.matches?.length,
                    itemBuilder: (context, i) => MatchCard(
                      matchTitle: eventDetails.matches?[i].title as String,
                      match: eventDetails.matches?[i].match as String,
                    ),

                    // Card(
                    //   child: Container(
                    //     width: double.infinity,
                    //     padding: const EdgeInsets.all(15.0),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           eventDetails.matches?[i].title as String,
                    //           style: const TextStyle(
                    //             fontSize: 20,
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //         const SizedBox(
                    //           height: 8,
                    //         ),
                    //         Text(
                    //           eventDetails.matches?[i].match as String,
                    //           style: const TextStyle(
                    //             fontSize: 16,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
