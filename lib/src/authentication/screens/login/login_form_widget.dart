import 'package:MyMedice/src/constants/colors.dart';
import 'package:MyMedice/src/constants/sizes.dart';
import 'package:MyMedice/src/constants/text_strings.dart';
import 'package:MyMedice/src/authentication/controllers/login_controller.dart';
import 'package:MyMedice/src/authentication/screens/forget_password/forget_password_options/forget_password_modele_bottom_sheet.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isloading = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final _formKey = GlobalKey<FormState>();
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (email) =>
                    email != null && EmailValidator.validate(email)
                        ? null
                        : 'Enter a valid Email',
                cursorColor: tSecondaryColor,
                keyboardType: TextInputType.emailAddress,
                controller: controller.email,
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline_outlined,
                      color: tSecondaryColor,
                    ),
                    labelText: tEmail,
                    hintText: tEmail,
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: tFormHeight,
              ),
              TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (password) =>
                      password != null && password.length < 6
                          ? "password can't to be less than 6 letter "
                          : null,
                  cursorColor: tSecondaryColor,
                  keyboardType: TextInputType.name,
                  obscureText: _obscureText,
                  controller: controller.password,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline_rounded),
                    labelText: tPassWord,
                    hintText: tPassWord,
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(_obscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  )),
              const SizedBox(
                height: tFormHeight,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        ForgetPasswordScreen.buildShowModalBottomSheet(context);
                      },
                      child: const Text(tForgetPassWord))),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    if (isloading) return;
                    setState(() => isloading = true);
                    await Future.delayed(const Duration(milliseconds: 3000));
                    setState(() => isloading = false);
                    LoginController.instance.loginUser(
                        controller.email.text.trim().toLowerCase(),
                        controller.password.text.trim().toLowerCase());
                  },
                  child: isloading
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(
                              color:
                                  isDarkMode ? tSecondaryColor : tPrimaryColor,
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            const Text('Please Wait ...')
                          ],
                        )
                      : Text(tLogin.toUpperCase()),
                ),
              ),
            ],
          ),
        ));
  }
}
