import 'package:my_medics/src/constants/text_strings.dart';

class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure(
      [this.message = 'Ab Unknown error occured.']);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case tweakPassword:
        return const SignUpWithEmailAndPasswordFailure(
            'Please Enter a Stronger Password.');
      case tinvalidEmail:
        return const SignUpWithEmailAndPasswordFailure(
            'Email is not valid or badly Fromatted.');
      case temailAlreadyUsed:
        return const SignUpWithEmailAndPasswordFailure(
            'An account already exists for that email.');
      case toperationNotAllowed:
        return const SignUpWithEmailAndPasswordFailure(
            'Operation is not Allowed.Please contact support.');
      case tuserDisabled:
        return const SignUpWithEmailAndPasswordFailure(
            'This User has been disabled.Please contact support for help.');
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}
