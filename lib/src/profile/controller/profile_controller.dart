import 'package:my_medics/src/repository/authentication_repository/authentification_repository.dart';
import 'package:my_medics/src/repository/user_repository/user_repository.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();
  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());
  //* Step 3 Get User Eamil and pass to UserRepository to fetch user record
  /* getUserData() {
    final email = _authRepo.firebaseUser.value?.email;
    if (email != null) {
      return _userRepo.getUserDetails(email);
    } else {
      Get.snackbar('Error', 'Login to continue');
    }
  }*/

  /*Future<List<UserModel>> getAllUser() async {
    return await _userRepo.allUser();
  }*/
}
