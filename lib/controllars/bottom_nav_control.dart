import 'package:get/get.dart';

class BottomNavControl extends GetxController {
  int currentTab = 0;

  void changetab(int tab) {
    currentTab = tab;
    update();
  }
}
