import 'package:ecommerce_with_firebase/main.dart';
import 'package:ecommerce_with_firebase/screen/Register_page.dart';
import 'package:ecommerce_with_firebase/screen/login.dart';
import 'package:ecommerce_with_firebase/screen/splash_screen.dart';
import 'package:ecommerce_with_firebase/utility/all_sizes.dart';
import 'package:ecommerce_with_firebase/utility/all_styles.dart';
import 'package:ecommerce_with_firebase/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_with_firebase/utility/all_colors.dart';
import 'package:get/get.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width:allsize.fullwidth(context),
        padding: EdgeInsets.all(10),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(
                  image: AssetImage('assets/Group 605 (1).png')),
              
            ),
            Text("Discover Your",style: allstyles.headingstyle,
            textAlign: TextAlign.center,
            ),
            Text("Dream Job here",style: allstyles.headingstyle,
              textAlign: TextAlign.center,
            ),
            Text("Explore all the existing job roles based on your",style: allstyles.subtitlestyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            Text("interest and study major",style: allstyles.subtitlestyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 90,),

          Column(
            children: [
              Row(
mainAxisAlignment:MainAxisAlignment.center,

                children: [
                  Custombutton(height: 65, width: 150, ontap:(){
                   Get.to(login());

                  }, size: allsize.large, text:'LogIn', color:  allcolors.primarycolor, Textcolor: allcolors.white,),

                  SizedBox(width: 30,),

                  Custombutton(height: 65, width: 150, ontap:(){
                    Get.to(RegisterPage());

                  }, size: allsize.large, text:'Register',color: allcolors.secondarycolor,Textcolor: allcolors.black,),
                ],

              ),
            ],
          )
          ],
        ),
      ),
    );
  }
}
