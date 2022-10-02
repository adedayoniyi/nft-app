import 'package:flutter/material.dart';
import 'package:nft_apk_task2/screens/recentTab.dart';
import 'package:nft_apk_task2/screens/topTab.dart';
import 'package:nft_apk_task2/screens/trendingTab.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 220,
          flexibleSpace: Container(
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 280),
                  child: Container(
                    height: 45,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(width: 2.5, color: Colors.grey)),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Ready to get started?",
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    "Create your unique NFT collection",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[400],
                    ),
                  ),
                )
              ],
            ),
          ),
          bottom: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: "Recent",
                ),
                Tab(
                  text: "Trending",
                ),
                Tab(
                  text: "Top",
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            RecentTab(),
            TrendingTab(),
            TopTab(),
          ],
        ),
      ),
    );

    // body: DefaultTabController(
    //     length: tabOptions.length,
    //     child: Scaffold(
    //       extendBody: true,
    //       backgroundColor: Colors.grey[300],
    //       body: ListView(
    //         children: [
    //           SizedBox(
    //             height: 600,
    //             child: MyTabBar(
    //               tabOptions: tabOptions,
    //             ),
    //           )
    //         ],
    //       ),
    //     )
    //     ),
  }
}
