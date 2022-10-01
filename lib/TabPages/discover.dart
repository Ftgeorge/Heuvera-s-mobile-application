import 'package:flutter/material.dart';
import 'package:hybrid_application/TabPages/Home_section.dart';
import 'package:hybrid_application/TabPages/apartment.dart';
import 'package:hybrid_application/TabPages/discover.dart';
import 'package:hybrid_application/TabPages/for_you.dart';
import 'package:hybrid_application/TabPages/home.dart';
import 'package:hybrid_application/TabPages/marketplace.dart';
import 'package:hybrid_application/TabPages/menu.dart';
import 'package:hybrid_application/TabPages/notification.dart';
import 'package:hybrid_application/TabPages/places.dart';

class discover extends StatefulWidget {
  @override
  _discoverState createState() => _discoverState();
}

class _discoverState extends State<discover>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 40),
          const Text(
            "Discover",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Oxygen',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          const Text(
            "Take a look and check what suites you the most",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontFamily: 'Oxygen',
            ),
          ),
          SizedBox(
            height: 2,
          ),
          TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: tabController,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const For_you(),
              const Homesection(),
              const apartment(),
              const places(),
            ],
          ),
          Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: DefaultTabController(
              length: 4,
              child: TabBar(tabs: [
                Tab(
                  text: "FOR YOU",
                ),
                Tab(
                  text: "HOMES",
                ),
                Tab(
                  text: "APARTMENT",
                ),
                Tab(
                  text: "PLACES",
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
