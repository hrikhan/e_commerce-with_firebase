import 'package:ecommerce_with_firebase/buttom_navbar/bottomnavbar.dart';
import 'package:ecommerce_with_firebase/screen/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/all_colors.dart';
import '../utility/all_sizes.dart';
import '../utility/all_styles.dart';
import '../widgets/Custom_textfeild.dart';
import '../widgets/custom_button.dart';

class ProfileSetupPage extends StatelessWidget {
  const ProfileSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Container(
          width: allsize.fullwidth(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: allcolors.secondarycolor,
                ),
                child: Center(
                    child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 40,
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Profile Setup',
                      style: allstyles.headingstyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Please fill be below details to complete',
                      style: allstyles.subtitlestyle.copyWith(fontSize: 17),
                    ),
                    Text(
                      'your profile. ',
                      style: allstyles.subtitlestyle.copyWith(fontSize: 17),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: allcolors.primarycolor, width: 4),
                              color: allcolors.primarycolor,
                              shape: BoxShape.circle),
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            minRadius: 55,
                            child: Icon(
                              Icons.person,
                              size: 100,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            top: 70,
                            child: CircleAvatar(child: Icon(Icons.image)))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomTextfeild(
                      hintText: ' Full name',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextfeild(
                      hintText: ' Address',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextfeild(
                      hintText: ' Phone number',
                    ),
                    SizedBox(height: 30),
                    Custombutton(
                        height: 50,
                        width: allsize.fullwidth(context),
                        ontap: () {
                          Get.to(Bottomnavbar());
                        },
                        size: allsize.large,
                        text: "Completed  Setup",
                        color: allcolors.primarycolor,
                        Textcolor: allcolors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
