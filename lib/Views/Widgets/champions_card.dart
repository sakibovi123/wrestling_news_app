import 'package:flutter/material.dart';

class ChampionsCard extends StatelessWidget {
  const ChampionsCard({
    Key? key,
    required this.width,
    required this.height,
    required this.eventName,
    required this.currentChampion,
    required this.since,
    required this.days,
  }) : super(key: key);

  final double width;
  final double height;
  final String eventName;
  final String currentChampion;
  final String since;
  final String days;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        width: width,
        height: height * 0.30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey, //color of shadow
              spreadRadius: 0.5,
              blurRadius: 3,
              offset: Offset(0, 1),
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
          ],
        ),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                width: width * 0.20,
                height: height * 0.20,
                child: Image.network(
                  'https://wallpapercave.com/wp/wp2092436.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                height: height * .28,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: Colors.redAccent,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Text(eventName),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text('CUREENT CHAMPION: $currentChampion'),
                          Text('SINCE: $since'),
                          Text('DAYS: $days'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: width * 0.20,
                height: height * 0.20,
                child: Image.network(
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/0c782e4c-fae0-4a87-b7b1-a752598d9df9/deikh6z-9d8ce555-8929-4025-9d7b-550f7c4a8db7.png/v1/crop/w_275,h_350,x_0,y_0,scl_0.26953125,strp/roman_reigns__custom__wwe_champion_png_by_ambriegnsasylum16_deikh6z-350t.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTMwMSIsInBhdGgiOiJcL2ZcLzBjNzgyZTRjLWZhZTAtNGE4Ny1iN2IxLWE3NTI1OThkOWRmOVwvZGVpa2g2ei05ZDhjZTU1NS04OTI5LTQwMjUtOWQ3Yi01NTBmN2M0YThkYjcucG5nIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.Q33OoKqkPPzExJeeKxh8_iSNb5pvFQ9Rcs41QOIp7qw',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
