import 'package:my_medics/src/authentication/screens/Welcome/welcome_screen.dart';
import 'package:my_medics/src/repository/authentication_repository/authentification_repository.dart';
import 'package:get/get.dart';

class LogoutController extends GetxController {
  static LogoutController get instance => Get.find();

  void logout() {
    AuthenticationRepository.instance.logout();
    Get.off(const WelcomeScreen());
  }
}
