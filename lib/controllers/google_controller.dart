
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:manaakiwai/controllers/auth_controller.dart';
import 'package:manaakiwai/views/pages/auth%20flow/login/login.dart';
import 'package:manaakiwai/views/pages/home/home.dart';

class GoogleAuthController extends GetxController {
   User? user;
  FirebaseAuth auth = FirebaseAuth.instance;
   GoogleSignIn? googleSignIn;
  // ignore: type_annotate_public_apis
  var isSign = false.obs;
   GoogleAuthController? controller;
  @override
  void onInit() {
    googleSignIn = GoogleSignIn();
    ever(isSign, handleAuth);
    isSign.value = auth.currentUser != null;
    auth.authStateChanges().listen((event) {
      isSign.value = event != null;
    });
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  // ignore: type_annotate_public_apis
  handleAuth(bool callback) {
    Future.delayed(const Duration(seconds: 2), () {
      if (callback) {
        final controller = Get.put(AuthController());
        controller.getUser();
        Get.offAll(const HomePage());
      } else {
        Get.offAll(const LoginPage());
      }
    });
  }
}
