import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:manaakiwai/views/pages/auth%20flow/login/login.dart';
import 'package:manaakiwai/views/pages/home/home.dart';

import '../models/user_model.dart';
import '../services/database.dart';
import 'google_controller.dart';

class AuthController extends GetxController {
  @override
  void onInit() {
    firebaseUser.bindStream(auth.authStateChanges());
    print('user state ${auth.authStateChanges().first} ');

    super.onInit();
  }

  RxBool isprofileupdated = false.obs;
  final auth = FirebaseAuth.instance;
  final firebaseFirestore = FirebaseFirestore.instance;
  final firebaseUser = Rxn<User>();
  User? get users => firebaseUser.value;

  RxBool isLoading = false.obs;

  Rx<UserModel> usermodel = UserModel().obs;

  UserModel get getuser => usermodel.value;
  set getuser(UserModel value) => usermodel.value = value;
//get user data

  getUser() async {
    try {
      DocumentSnapshot doc = await firebaseFirestore
          .collection("Users")
          .doc(auth.currentUser?.uid)
          .get();
      getuser = UserModel.fromDocumentSnapshot(doc);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

//Create Account with email and password

  Future<void> creatAccountWithEmail(String email, String password, String name,
      String username, String contactNumber) async {
    isLoading.value = true;
    Map<String, dynamic> userinfo = {
      "Email": email,
      "Username": username,
      "Name": name,
      "ContactNumber": contactNumber,
      "Password": password,
      "CreatedOn": DateTime.now(),
    };
    await auth
        .createUserWithEmailAndPassword(
            email: email.trim(), password: password.trim())
        .then((value) {
      firebaseFirestore
          .collection('Users')
          .doc(value.user?.uid)
          .set(userinfo)
          .then((value) {
        isLoading.value = false;
        Get.to(() => const HomePage(), transition: Transition.downToUp);
      }).catchError((e) {
        isLoading.value = false;
        Get.snackbar('Error', e.toString());
      });
    });
  }

  Future<void> login(String email, String password) async {
    isLoading.value = true;
    await auth
        .signInWithEmailAndPassword(
            email: email.trim(), password: password.trim())
        .then((value) {
      isLoading.value = false;
      Get.to(() => const HomePage(), transition: Transition.downToUp);
    }).catchError((e) {
      isLoading.value = false;
      Get.snackbar('Error', e.toString());
    });
  }

  void signOut() {
    auth.signOut().then((value) {
      Get.to(() => const LoginPage());
    });
  }

  // ignore: type_annotate_public_apis
  passResetEmail(String email, BuildContext context) async {
    try {
      await auth.sendPasswordResetEmail(email: email).then((value) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          "Reset Email Sent!",
          style: TextStyle(color: Colors.white),
        )));
      });
    } catch (e) {
      Get.snackbar("Error in reseting password", e.toString());
    }
  }
  //ON GOOGLE SIGNIN

  User? user;
  void onGoogleSignIn() async {
    Get.find<AuthController>().isLoading.value = true;
    final controller = Get.put(GoogleAuthController());

    final GoogleSignInAccount? _googleSignInAccount =
        await Get.find<GoogleAuthController>().googleSignIn!.signIn();
    if (GoogleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await _googleSignInAccount!.authentication;
      final OAuthCredential authCredential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken);

      final UserCredential credential =
          await controller.auth.signInWithCredential(authCredential);
      user = credential.user;
      //creating firestore User
      final UserModel _user = UserModel(
        id: user!.uid,
        name: user!.displayName,
        email: user!.email,
        username: user!.displayName,
        contactNumber: user!.phoneNumber,
        password: "Google auth not allow to show pass",
      );
      DataBase().createUser(_user).then((value) {
        getUser();
        Get.find<AuthController>().isLoading.value = false;
      });
    }
  }
}
