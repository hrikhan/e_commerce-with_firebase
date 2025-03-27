import 'package:ecommerce_with_firebase/controllars/bottom_nav_control.dart';
import 'package:ecommerce_with_firebase/screen/favourite.dart';
import 'package:ecommerce_with_firebase/screen/home_Screen.dart';
import 'package:ecommerce_with_firebase/screen/my_card.dart';
import 'package:ecommerce_with_firebase/screen/profile.dart';
import 'package:ecommerce_with_firebase/utility/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class Bottomnavbar extends StatelessWidget {
  Bottomnavbar({super.key});
  BottomNavControl _controllar = Get.put(BottomNavControl());
  final List screen = [HomeScreen(), MyCard(), Favourite(), Profile()];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavControl>(builder: (_) {
      return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: allcolors.black,
              currentIndex: _controllar.currentTab,
              selectedItemColor: allcolors.primarycolor,
              onTap: (index) => _controllar.changetab(index),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shop_outlined), label: 'shop'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_outline), label: 'favorite'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline), label: 'profile'),
              ]),
          body: screen[_controllar.currentTab]);
    });
  }
}
