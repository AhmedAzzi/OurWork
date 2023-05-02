import 'package:my_medics/src/core/screens/navigat.dart';
import 'package:my_medics/src/repository/authentication_repository/authentification_repository.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const Dachboard()) : Get.back();
  }
}
