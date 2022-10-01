import 'package:flutter/material.dart';
import 'package:hybrid_application/TabPages/Cityies.dart';
import 'package:hybrid_application/TabPages/discover.dart';
import 'package:hybrid_application/TabPages/home.dart';
import 'package:hybrid_application/TabPages/marketplace.dart';
import 'package:hybrid_application/TabPages/menu.dart';
import 'package:hybrid_application/TabPages/notification.dart';
import 'package:hybrid_application/TabPages/places.dart';
import 'package:hybrid_application/TabPages/states.dart';

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
          Container(
            height: 155,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const SizedBox(height: 70.0),
                  Row(
                    children: [
                      const Icon(
                        Icons.search_rounded,
                        color: Colors.purpleAccent,
                      ),
                      const SizedBox(
                        width: 2.0,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            // onChanged: (valueTyped) {
                            //   findPlaceAutoCompleteSearch(valueTyped);
                            // },
                            decoration: InputDecoration(
                              hintText: "Search Here",
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              fillColor: Color.fromARGB(255, 243, 243, 243),
                              filled: true,
                              contentPadding: const EdgeInsets.only(
                                left: 11.0,
                                top: 8.0,
                                bottom: 8.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DefaultTabController(
                length: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: TabBar(tabs: [
                    Tab(
                      text: "States",
                    ),
                    Tab(
                      text: "Cities",
                    ),
                    Tab(
                      text: "Cities",
                    ),
                  ]),
                )),
          )
        ],
      ),
    );
    // return DefaultTabController(
    //   length: 3,
    //   child: Scaffold(
    //     body: Container(
    //       height: 155,
    //       decoration: const BoxDecoration(
    //         color: Colors.white,
    //       ),
    //       child: Padding(
    //         padding: const EdgeInsets.all(10.0),
    //         child: Column(
    //           children: [
    //             const SizedBox(height: 5.0),
    //             Row(
    //               children: [
    //                 const Icon(
    //                   Icons.search_rounded,
    //                   color: Colors.purpleAccent,
    //                 ),
    //                 const SizedBox(
    //                   width: 2.0,
    //                 ),
    //                 Expanded(
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(10.0),
    //                     child: TextField(
    //                       // onChanged: (valueTyped) {
    //                       //   findPlaceAutoCompleteSearch(valueTyped);
    //                       // },
    //                       decoration: InputDecoration(
    //                         hintText: "Search Here",
    //                         focusedBorder: OutlineInputBorder(
    //                           borderRadius: BorderRadius.circular(0),
    //                           // borderSide: const BorderSide(
    //                           //   width: 1,
    //                           //   style: BorderStyle.none,
    //                           //   //color: Colors.black,
    //                           // ),
    //                         ),
    //                         enabledBorder: OutlineInputBorder(
    //                             borderRadius: BorderRadius.circular(10)),
    //                         fillColor: Color.fromARGB(255, 243, 243, 243),
    //                         filled: true,
    //                         contentPadding: const EdgeInsets.only(
    //                           left: 11.0,
    //                           top: 8.0,
    //                           bottom: 8.0,
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //     appBar: AppBar(
    //       bottom: TabBar(
    //         tabs: [
    //           Tab(
    //             text: "States",
    //           ),
    //           Tab(
    //             text: "Cities",
    //           ),
    //           Tab(
    //             text: "Places",
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
