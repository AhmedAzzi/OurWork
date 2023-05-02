import 'package:my_medics/src/constants/icon_string.dart';
import 'package:my_medics/src/constants/sizes.dart';
import 'package:my_medics/src/constants/text_strings.dart';
import 'package:my_medics/src/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('OR'),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
                icon: const Image(
                  image: AssetImage(tGoogleLogoImage),
                  width: 20.0,
                ),
                onPressed: () {},
                label: const Text(tSignUpWithGoogle))),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              Get.to(() => const LoginScreen());
            },
            child: Text.rich(TextSpan(
                text: tAlreadyHaveAnAccount,
                style: Theme.of(context).textTheme.bodyLarge,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const TextSpan(
                      text: tLogin, style: TextStyle(color: Colors.blue))
                ])))
      ],
    );
  }
}
