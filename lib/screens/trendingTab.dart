import 'package:flutter/material.dart';
import 'package:nft_apk_task2/screens/detailsPage2.dart';
import 'package:nft_apk_task2/util/nftCard2.dart';

class TrendingTab extends StatefulWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  State<TrendingTab> createState() => _TrendingTabState();
}

class _TrendingTabState extends State<TrendingTab> {
  final List data2 = [
    ["image/duck-image1.jpeg", 15],
    ["image/duck-image2.jpeg", 24],
    ["image/duck-image3.png", 9]
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black,
        child: ListView.builder(
            itemCount: data2.length,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return DetailsPage2();
                  })));
                },
                child: NFTCardB(
                  imagePath2: data2[index][0],
                ),
              );
            })),
      ),
    );
  }
}
