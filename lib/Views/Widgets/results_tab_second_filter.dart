import 'package:flutter/material.dart';

class ResultsTabSecondFilter extends StatefulWidget {
  const ResultsTabSecondFilter({
    Key? key,
    required this.tabController,
  }) : super(key: key);
  final tabController;

  @override
  State<ResultsTabSecondFilter> createState() => _ResultsTabSecondFilterState();
}

class _ResultsTabSecondFilterState extends State<ResultsTabSecondFilter>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Container(
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
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
                  Tab(text: 'RAW'),
                  Tab(text: 'Smackdown'),
                  Tab(text: 'NXT'),
                  Tab(text: 'NXT Level Up'),
                ],
              ),
            ),
          ),
          Container(
            child: TabBarView(
              controller: widget.tabController,
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
