import 'package:my_medics/src/authentication/models/user_model.dart';
import 'package:my_medics/src/core/screens/navigat.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

//* Store User in fireStore
  createUser(UserModel user) async {
    await _db.collection("Users").add(user.toJson()).whenComplete(() {
      Get.snackbar('Success', 'Your account has been created.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green.withOpacity(0.1),
          colorText: Colors.green);
      Get.offAll(() => const Dachboard());
    }).catchError((error, stackTrace) {
      Get.snackbar('Error', 'Something want wrong.Try again',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
      return error;
    });
  }
  //* Step 2 -Fetch Users Or user details

  /*Future<UserModel> getUserDetails(String email) async {
    final snapshot =
        await _db.collection("Users").where("Email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    return userData;
  }*/

  /* Future<List<UserModel>> allUser() async {
    final snapshot = await _db.collection("Users").get();
    final userData =
        snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    return userData;
  }*/
}
