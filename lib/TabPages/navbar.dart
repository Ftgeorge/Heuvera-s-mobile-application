import 'package:flutter/material.dart';
import 'package:hybrid_application/TabPages/discover.dart';
import 'package:hybrid_application/TabPages/home.dart';
import 'package:hybrid_application/TabPages/notification.dart';

class NavPage extends StatefulWidget {
  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> with SingleTickerProviderStateMixin {
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
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const discover(),
          const homePage(),
          const notificationPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: "Marketplace",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.battery_full_outlined),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: "Discover",
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.purpleAccent,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontFamily: 'Oxygen',
        ),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,
      ),
    );
  }
}