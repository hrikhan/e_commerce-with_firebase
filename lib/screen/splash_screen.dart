
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ecommerce_with_firebase/screen/Welcome_screen.dart';
import 'package:ecommerce_with_firebase/utility/all_colors.dart';
import 'package:ecommerce_with_firebase/utility/all_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splash_screen extends StatelessWidget {
  const splash_screen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5),(){
     Get.off(WelcomeScreen());

    });
    return Scaffold(
      backgroundColor: allcolors.primarycolor,
      body: Center(
        child: AnimatedTextKit(animatedTexts:
        [
          WavyAnimatedText(
            "Hk Shopping Center",
            textStyle:allstyles.headingstyle.copyWith(color: allcolors.white
),
          ),
        ]
        )



      ),


    );
  }
}
