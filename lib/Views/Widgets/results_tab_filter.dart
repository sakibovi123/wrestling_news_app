import 'package:flutter/material.dart';

class ResultsTabFilter extends StatefulWidget {
  const ResultsTabFilter({
    Key? key,
    required this.tabController,
  }) : super(key: key);
  final tabController;

  @override
  State<ResultsTabFilter> createState() => _ResultsTabFilterState();
}

class _ResultsTabFilterState extends State<ResultsTabFilter>
    with TickerProviderStateMixin {
  List<String> events = [];
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.redAccent,
              ),
              labelPadding: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 0,
                bottom: 0,
              ),
              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.redAccent,
              controller: widget.tabController,
              tabs: const [
                Tab(text: 'WWE'),
                Tab(text: 'AEW'),
                Tab(text: 'Impact'),
                Tab(text: 'NJPW'),
              ],
            ),
          ),
        ),
        Container(
          child: TabBarView(
            controller: widget.tabController,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent,
                  ),
                  labelPadding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                    top: 0,
                    bottom: 0,
                  ),
                  isScrollable: true,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.redAccent,
                  controller: widget.tabController,
                  tabs: const [
                    Tab(text: 'Events'),
                    Tab(text: 'Matches'),
                    Tab(text: 'Results'),
                    Tab(text: 'Rosters'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
