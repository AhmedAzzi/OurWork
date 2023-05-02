import 'package:my_medics/src/repository/authentication_repository/authentification_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordEmailController extends GetxController {
  static ForgetPasswordEmailController get instance => Get.find();
  final email = TextEditingController();

  //Get email from user (Screen) and pass it to Auth Repository for Firebase Authentication
  Future<void> emailAuthentication(String email) async {
    try {
      await AuthenticationRepository.instance.emailAuthentication(email);
      Get.back(); // close the dialog
      // show success message
      Get.snackbar(
          'Success', 'A password reset link has been sent to your email',
          backgroundColor: Colors.green, colorText: Colors.white);
    } catch (e) {
      Get.back(); // close the dialog
      // show error message
      Get.snackbar('Error',
          'Failed to send password reset link. Please try again later.',
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }
}
