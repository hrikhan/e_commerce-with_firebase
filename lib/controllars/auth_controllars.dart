import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class AuthControllars extends GetxController {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  bool setloading = false;
  //funcion
  setloadingfunction(bool loading) {
    loading = setloading;
    update();
  }

  //create account
  Future<void> createaccount(String email, String password) async {
    try {
      setloadingfunction(true);
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        Get.snackbar('succesful', 'created user');
      }
    } catch (e) {
      Get.snackbar(e.toString(), 'error');
    } finally {
      // code here
      setloadingfunction(false);
      update();
    }
  }

  Future<void> login(String email, String password) async {
    try {
      setloadingfunction(true);
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        Get.snackbar('succesful', 'created user');
      }
    } catch (e) {
      Get.snackbar(e.toString(), 'error');
    } finally {
      // code here
      setloadingfunction(false);
      update();
    }
  }

  Future<void> logout() async {
    try {
      setloadingfunction(true);
      await firebaseAuth.signOut();
      Get.snackbar('succesful', 'logged out');
    } catch (e) {
      Get.snackbar(e.toString(), 'error');
    } finally {
      // code here
      setloadingfunction(false);
      update();
    }
  }
}
