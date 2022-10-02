import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class NFTCardC extends StatelessWidget {
  final String imagePath3;
  const NFTCardC({Key? key, required this.imagePath3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Container(
          height: 330,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: AssetImage(
                    imagePath3,
                  ),
                  fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Column(
                children: [
                  SizedBox(
                    height: 235,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GlassmorphicContainer(
                          width: 110,
                          height: 45,
                          borderRadius: 25,
                          blur: 0,
                          //alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFffffff).withOpacity(0.9),
                                Color(0xFFFFFFFF).withOpacity(0.9),
                              ],
                              stops: [
                                0.1,
                                1,
                              ]),
                          borderGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFffffff).withOpacity(0.5),
                              Color((0xFFFFFFFF)).withOpacity(0.5),
                            ],
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.grey,
                                    ),
                                    child: Image.asset("image/eth.png"),
                                  ),
                                ),
                                Text(
                                  "0.19",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GlassmorphicContainer(
                          width: 110,
                          height: 45,
                          borderRadius: 25,
                          blur: 0,
                          //alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 71, 70, 70)
                                    .withOpacity(0.5),
                                Color.fromARGB(255, 73, 72, 72)
                                    .withOpacity(0.5),
                              ],
                              stops: [
                                0.1,
                                1,
                              ]),
                          borderGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFffffff).withOpacity(0.5),
                              Color((0xFFFFFFFF)).withOpacity(0.5),
                            ],
                          ),
                          child: Center(
                              child: Text("NFT 300",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ]),
                ],
              ),
            ),
          ),
        ));
  }
}
