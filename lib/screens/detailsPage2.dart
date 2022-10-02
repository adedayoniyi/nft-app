import 'package:flutter/material.dart';

class DetailsPage2 extends StatelessWidget {
  const DetailsPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "image/duck-image1.jpeg",
                fit: BoxFit.cover,
                height: 315,
                width: 315,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 110),
            child: Text(
              "TUD 231",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 160),
            child: Text(
              "Author: TUD NFT",
              style: TextStyle(fontSize: 20, color: Colors.grey[500]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "TUD NFT is an exclusive NFT collection of 10,000 unique tokens.TUD NFT is a combination of business,street fashion and creative impluses,you can see your self in it",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "special price",
                  style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  "auction ending in",
                  style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "0.95 NFT",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  "2h:30m:24s",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: Color.fromARGB(255, 145, 218, 10), width: 2),
                  color: Colors.black),
              child: Center(
                  child: Text(
                "BUY",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
            ),
          )
        ],
      ),
    );
  }
}
