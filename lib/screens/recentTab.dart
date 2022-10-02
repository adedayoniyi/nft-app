import 'package:flutter/material.dart';
import 'package:nft_apk_task2/screens/detailsPage.dart';
import 'package:nft_apk_task2/util/nftCard1.dart';

class RecentTab extends StatefulWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  State<RecentTab> createState() => _RecentTabState();
}

class _RecentTabState extends State<RecentTab> {
  final List data1 = [
    ["image/raccoon-nft3.png", 15],
    ["image/racoon-nft1.png", 24],
    ["image/racoon-nft2.jpeg", 9]
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black,
        child: ListView.builder(
            itemCount: data1.length,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return DetailsPage();
                  })));
                },
                child: NFTCardA(
                  imagePath: data1[index][0],
                ),
              );
            })),
      ),
    );
  }
}
