import 'package:MyMedice/src/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:MyMedice/src/repository/authentication_repository/authentification_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordPhonController extends GetxController {
  static ForgetPasswordPhonController get instance => Get.find();
//TextField Controllers to get data from TextFields
  final phoneNo = TextEditingController();

//Get phoneNo from user (Screen) and pass it to Auth Repository for Firebase Authentication
  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
     Get.to(() => const OTPScreen());
  }
}
