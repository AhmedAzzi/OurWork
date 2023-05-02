import 'package:MyMedice/src/repository/authentication_repository/authentification_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  /// TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();

  /// TextField Validation

  //Call this Function from Design & it will do the rest
  Future<void> loginUser(String email, String password) async {
    AuthenticationRepository.instance
        .loginUserWithEmailAndPassword(email, password);
  }

  Future<void> loginWithGoogle() async {
    AuthenticationRepository.instance.signInwithGoogle();
  }
}
