import 'package:MyMedice/src/constants/text_strings.dart';

class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure(
      [this.message = 'Ab Unknown error occured.']);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case tweak_password:
        return const SignUpWithEmailAndPasswordFailure(
            'Please Enter a Stronger Password.');
      case tinvalid_email:
        return const SignUpWithEmailAndPasswordFailure(
            'Email is not valid or badly Fromatted.');
      case temail_already_in_use:
        return const SignUpWithEmailAndPasswordFailure(
            'An account already exists for that email.');
      case toperation_not_allowed:
        return const SignUpWithEmailAndPasswordFailure(
            'Operation is not Allowed.Please contact support.');
      case tuser_disabled:
        return const SignUpWithEmailAndPasswordFailure(
            'This User has been disabled.Please contact support for help.');
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}
