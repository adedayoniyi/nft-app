import 'package:flutter/material.dart';
import 'package:nft_apk_task2/screens/detailsPage3.dart';
import 'package:nft_apk_task2/util/nftCard3.dart';

class TopTab extends StatefulWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  State<TopTab> createState() => _TopTabState();
}

class _TopTabState extends State<TopTab> {
  final List data3 = [
    ["image/other-nft3.png", 15],
    ["image/other-nft1.png", 24],
    ["image/other-nft2.png", 9]
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black,
        child: ListView.builder(
            itemCount: data3.length,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return DetailsPage3();
                  })));
                },
                child: NFTCardC(
                  imagePath3: data3[index][0],
                ),
              );
            })),
      ),
    );
  }
}
