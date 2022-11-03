import 'package:flutter/material.dart';

class ResultsTabThirdFilter extends StatefulWidget {
  const ResultsTabThirdFilter({
    Key? key,
    required this.tabController,
  }) : super(key: key);
  final tabController;
  @override
  State<ResultsTabThirdFilter> createState() => _ResultsTabThirdFilterState();
}

class _ResultsTabThirdFilterState extends State<ResultsTabThirdFilter>
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
                // controller: tabController,
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
            height: double.maxFinite,
            child: TabBarView(
              controller: tabController,
              children: [
                Text('data'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
