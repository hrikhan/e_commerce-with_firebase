import 'package:ecommerce_with_firebase/utility/all_sizes.dart';
import 'package:ecommerce_with_firebase/utility/all_styles.dart';
import 'package:flutter/material.dart';

import '../utility/all_colors.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.only(
        top: 40,left: 15
      ),
      child: Container(
        width:allsize.fullwidth(context),
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
                Text(" Hello Hridoy",style: allstyles.headingstyle.copyWith(color: allcolors.black,fontSize: 25),),
              Image(image: AssetImage('assets/Vector.png'))
            
            
              ],
            ),
            Text("  lets start shoping",style: allstyles.subtitlestyle.copyWith(color: allcolors.black,fontSize: 14),),
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
                      decoration:BoxDecoration(
                        color: allcolors.primarycolor,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                             top: 10,
                              left: 10,



                              child: Column(
                                
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("20% off this",style: TextStyle(color: allcolors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                  Text("Weakend",style: TextStyle(color: allcolors.white,fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.left,),
                                ],
                              )),
                          Positioned(
                          bottom: 20,
                              left: 20,

                              child: ElevatedButton(onPressed: (){}, child: Text("get noow"))),
                          Positioned(
                              bottom: 30,
                           right: 0,
                            child: Image(image: AssetImage("assets/hand-holding-shopping-bags-plain-background_23-2148286215-removebg-preview 1.png")),

                              )


                        ],
                      ),
                    ),
                  );
                }
              ),
            )

          ],
        ),
      ),
      ),

    );
  }
}
