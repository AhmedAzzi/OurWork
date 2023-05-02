import 'package:MyMedice/src/common_widgets/form/form_header_widget.dart';
import 'package:MyMedice/src/constants/icon_string.dart';
import 'package:MyMedice/src/constants/image_strings.dart';
import 'package:MyMedice/src/constants/sizes.dart';
import 'package:MyMedice/src/constants/text_strings.dart';
import 'package:MyMedice/src/authentication/controllers/login_controller.dart';
import 'package:MyMedice/src/authentication/screens/SignUp/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:MyMedice/src/constants/colors.dart';
import 'package:MyMedice/src/authentication/screens/forget_password/forget_password_options/forget_password_modele_bottom_sheet.dart';
import 'package:email_validator/email_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    //Get the size in LoginHeaderWidget()
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tLoginTitle,
                  subTitle: tLoginSubTitle,
                ),
                LoginForm(),
                LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//* Form
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
                    LoginController.instance.loginUser(
                        controller.email.text.trim().toLowerCase(),
                        controller.password.text.trim().toLowerCase());
                  },
                  child: Text(tLogin.toUpperCase()),
                ),
              ),
            ],
          ),
        ));
  }
}

//* Footer

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
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
                onPressed: () {
                  LoginController.instance.loginWithGoogle();
                },
                label: const Text(tSignInWithGoogle))),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              Get.to(() => const SingnUpScreen());
            },
            child: Text.rich(TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyText1,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const TextSpan(
                      text: tSignup, style: TextStyle(color: Colors.blue))
                ])))
      ],
    );
  }
}
