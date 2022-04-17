import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user_model.dart';

class DataBase{
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  ///for user data

  Future<bool> createUser(UserModel user) async {
    try {
      await _firestore.collection("Users").doc(user.id).set({
        "Name": user.name,
        "Email": user.email,
        "Password": user.password,
        "Username":user.username,
        "ContactNumber": user.contactNumber
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  
}