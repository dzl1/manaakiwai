import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? id, email, password, name,username,contactNumber;
  UserModel({
    this.password,
    this.email,
    this.id,
    this.name,
    this.username,
    this.contactNumber
  });
  UserModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    id = doc.id;
    email = doc["Email"];
    password = doc["Password"];
    name = doc["Name"];
    username=doc["Username"];
    contactNumber=doc["ContactNumber"];
    
    print("name is $name");
  }
}
