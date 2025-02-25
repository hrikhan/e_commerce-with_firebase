import 'package:flutter/material.dart';

import '../utility/all_colors.dart';
import '../utility/all_sizes.dart';
import '../utility/all_styles.dart';
import '../widgets/Custom_textfeild.dart';
import '../widgets/custom_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
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
                          hintText: ' Email',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextfeild(
                          hintText: ' password',
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        CustomTextfeild(
                          hintText: ' Confirmed password',
                        ),

                        SizedBox(height: 30),
                        Custombutton(
                            height: 50,
                            width: allsize.fullwidth(context),
                            ontap: () {},
                            size: allsize.large,
                            text: "Register",
                            color: allcolors.primarycolor,
                            Textcolor: allcolors.white),

                      ],
                    ),
                  ),
                  SizedBox(
                    height:25,
                  ),
                  Center(
                    child: InkWell(
                      onTap: (){},
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
  }
}
