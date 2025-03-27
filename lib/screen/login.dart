import 'package:ecommerce_with_firebase/buttom_navbar/bottomnavbar.dart';
import 'package:ecommerce_with_firebase/controllars/auth_controllars.dart';
import 'package:ecommerce_with_firebase/screen/Welcome_screen.dart';
import 'package:ecommerce_with_firebase/screen/home_Screen.dart';
import 'package:ecommerce_with_firebase/utility/all_colors.dart';
import 'package:ecommerce_with_firebase/utility/all_sizes.dart';
import 'package:ecommerce_with_firebase/utility/all_styles.dart';
import 'package:ecommerce_with_firebase/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/Custom_textfeild.dart';

class login extends StatelessWidget {
  login({super.key});
  AuthControllars _authControllars = Get.put(AuthControllars());
  final TextEditingController _emailControlling = TextEditingController();
  final TextEditingController _passwordControlling = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GetBuilder<AuthControllars>(builder: (_) {
        return Padding(
          padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
          child: Container(
            width: allsize.fullwidth(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(WelcomeScreen());
                  },
                  child: Container(
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
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Login here',
                        style: allstyles.headingstyle,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Welcome back you’ve',
                        style: allstyles.subtitlestyle,
                      ),
                      Text(
                        'been missed!',
                        style: allstyles.subtitlestyle,
                      ),
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
                        controller: _emailControlling,
                        hintText: ' Email',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextfeild(
                        controller: _passwordControlling,
                        hintText: ' password',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Forget password?',
                        textAlign: TextAlign.end,
                        style: allstyles.subtitlestyle,
                      ),
                      SizedBox(height: 30),
                      _authControllars.setloading
                          ? Center(
                              child: CircularProgressIndicator(
                                color: allcolors.primarycolor,
                              ),
                            )
                          : Custombutton(
                              height: 50,
                              width: allsize.fullwidth(context),
                              ontap: () {
                                if (_emailControlling.text.isNotEmpty &&
                                    _passwordControlling.text.isNotEmpty) {
                                  _authControllars.login(_emailControlling.text,
                                      _passwordControlling.text);
                                  Get.offAll(Bottomnavbar());
                                }
                              },
                              size: allsize.large,
                              text: "Login",
                              color: allcolors.primarycolor,
                              Textcolor: allcolors.white),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Create new account',
                      textAlign: TextAlign.end,
                      style: allstyles.subtitlestyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
