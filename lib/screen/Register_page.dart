import 'package:ecommerce_with_firebase/buttom_navbar/bottomnavbar.dart';
import 'package:ecommerce_with_firebase/controllars/auth_controllars.dart';
import 'package:ecommerce_with_firebase/screen/Profile_setup_page.dart';
import 'package:ecommerce_with_firebase/screen/Welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/all_colors.dart';
import '../utility/all_sizes.dart';
import '../utility/all_styles.dart';
import '../widgets/Custom_textfeild.dart';
import '../widgets/custom_button.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  AuthControllars authControllars = Get.put(AuthControllars());
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthControllars>(builder: (_) {
      print('error');
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
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
                        'Create Account',
                        style: allstyles.headingstyle,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Create an account so you can explore all the ',
                        style: allstyles.subtitlestyle.copyWith(fontSize: 17),
                      ),
                      Text(
                        'existing job ',
                        style: allstyles.subtitlestyle.copyWith(fontSize: 17),
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
                        controller: _emailcontroller,
                        hintText: ' Email',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomTextfeild(
                        controller: _passwordController,
                        hintText: ' password',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomTextfeild(
                        controller: _confirmController,
                        hintText: ' Confirmed password',
                      ),
                      SizedBox(height: 30),
                      authControllars.setloading
                          ? Center(
                              child: CircularProgressIndicator(
                                color: allcolors.primarycolor,
                              ),
                            )
                          : Custombutton(
                              height: 50,
                              width: allsize.fullwidth(context),
                              ontap: () {
                                if (_emailcontroller.text.isNotEmpty &&
                                    _passwordController.text.isNotEmpty &&
                                    _confirmController.text.isNotEmpty) {
                                  if (_passwordController.text ==
                                      _confirmController.text) {
                                    authControllars.createaccount(
                                        _emailcontroller.text,
                                        _passwordController.text);
                                    Get.offAll(Bottomnavbar());
                                  } else {
                                    Get.snackbar('Passwords do not match',
                                        'for help go to help section');
                                  }
                                } else {
                                  Get.snackbar(
                                    'Please fill all fields',
                                    "why not fill all fields",
                                  );
                                }
                              },
                              size: allsize.large,
                              text: "Register",
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
                      'Already have an account',
                      textAlign: TextAlign.end,
                      style: allstyles.subtitlestyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
