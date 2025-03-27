import 'package:ecommerce_with_firebase/screen/login.dart';
import 'package:ecommerce_with_firebase/utility/all_colors.dart';
import 'package:ecommerce_with_firebase/utility/all_styles.dart';
import 'package:ecommerce_with_firebase/widgets/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    User? user = _firebaseAuth.currentUser;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Name: Hridoy khan',
              style: allstyles.headingstyle,
            ),
            Text('Age: 23'),
            Text(
              'Email:${user?.email}',
              style: allstyles.subtitlestyle,
            ),
            SizedBox(height: 50),
            Center(
              child: Custombutton(
                  height: 50,
                  width: 100,
                  ontap: () {
                    _firebaseAuth.signOut();
                    Get.offAll(login());
                  },
                  size: 14,
                  text: 'Log Out',
                  color: Colors.red,
                  Textcolor: allcolors.white),
            )
          ],
        ),
      ),
    );
  }
}
