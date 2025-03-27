import 'dart:ffi';

import 'package:ecommerce_with_firebase/utility/all_sizes.dart';
import 'package:ecommerce_with_firebase/utility/all_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utility/all_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 15),
        child: Container(
          width: allsize.fullwidth(context),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: allcolors.secondarycolor,
                      ),
                      child: Center(
                          child: Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 40,
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: allcolors.secondarycolor,
                        ),
                        child: Center(
                            child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 40,
                        )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      " Hello Hridoy",
                      style: allstyles.headingstyle
                          .copyWith(color: allcolors.black, fontSize: 25),
                    ),
                    Image(image: AssetImage('assets/Vector.png'))
                  ],
                ),
                Text(
                  "  lets start shoping",
                  style: allstyles.subtitlestyle
                      .copyWith(color: allcolors.black, fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 140,
                            width: 280,
                            decoration: BoxDecoration(
                                color: allcolors.primarycolor,
                                borderRadius: BorderRadius.circular(15)),
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "20% off this",
                                          style: TextStyle(
                                              color: allcolors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Weakend",
                                          style: TextStyle(
                                            color: allcolors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    )),
                                Positioned(
                                    bottom: 20,
                                    left: 20,
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text("get noow"))),
                                Positioned(
                                  bottom: 30,
                                  right: 0,
                                  child: Image(
                                      image: AssetImage(
                                          "assets/hand-holding-shopping-bags-plain-background_23-2148286215-removebg-preview 1.png")),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                //top catagories section

                Padding(
                  padding: const EdgeInsets.only(right: 18, left: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top catagories',
                        style: allstyles.subtitlestyle,
                      ),
                      Text('see all',
                          style: TextStyle(
                              color: allcolors.primarycolor, fontSize: 20)),
                    ],
                  ),
                ),
                //list catagories section
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: allcolors.white,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Icon(Icons.shop_2_outlined),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 1000,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 220,
                      crossAxisCount: 2,
                    ),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _itemview());
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _itemview() {
  return Container(
    decoration: BoxDecoration(
        color: allcolors.secondarycolor,
        borderRadius: BorderRadius.circular(15)),
    child: const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '40 % off',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.favorite),
            ],
          ),
        ),
        Image(
          image: AssetImage(
            'assets/Mi-Smart-Band-4-832x558-1573195785-removebg-preview 1.png',
          ),
          fit: BoxFit.cover,
        ),
        Text('redmi note 4'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage('assets/Group 586.png')),
                  Text(
                    '45,000',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image(
                    image: AssetImage('assets/Group 586.png'),
                    height: 10,
                    width: 10,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    '50,000',
                    style: TextStyle(fontWeight: FontWeight.w100),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}
