import 'package:my_medics/src/authentication/screens/login/login_screen.dart';
import 'package:my_medics/src/common_widgets/form/form_header_widget.dart';
import 'package:my_medics/src/constants/colors.dart';
import 'package:my_medics/src/constants/icon_string.dart';
import 'package:my_medics/src/constants/image_strings.dart';
import 'package:my_medics/src/constants/sizes.dart';
import 'package:my_medics/src/constants/text_strings.dart';
import 'package:my_medics/src/authentication/controllers/singnup_controller.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingnUpScreen extends StatefulWidget {
  const SingnUpScreen({super.key});

  @override
  State<SingnUpScreen> createState() => _SingnUpScreenState();
}

class _SingnUpScreenState extends State<SingnUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: const [
                FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                ),
                SignUpFormWidget(),
                SignUpFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//* Form

class SignUpFormWidget extends StatefulWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  final controller = Get.put(SignUpController());
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                validator: (val) {
                  if (val!.length > 100) {
                    return "username can't to be larger than 100 letter";
                  } else if (val.length < 4) {
                    return "username can't to be less than 4 letter";
                  } else if (val.isEmpty) {
                    return "Please enter your fullname";
                  }
                  return null;
                },
                cursorColor: tSecondaryColor,
                controller: controller.fullName,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  label: Text(tFullName),
                  prefixIcon: Icon(
                    Icons.person_outline_outlined,
                    color: tSecondaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: tFormHeight - 10,
              ),
              TextFormField(
                validator: (email) =>
                    email != null && EmailValidator.validate(email)
                        ? null
                        : 'Enter a valid Email',
                cursorColor: tSecondaryColor,
                keyboardType: TextInputType.emailAddress,
                controller: controller.email,
                decoration: const InputDecoration(
                  label: Text(tEmail),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: tSecondaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: tFormHeight - 10,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (phone) => phone != null && phone.length < 10
                    ? "phone number can't to be more than 10 degits"
                    : null,
                cursorColor: tSecondaryColor,
                keyboardType: TextInputType.phone,
                controller: controller.phoneNo,
                decoration: const InputDecoration(
                  label: Text(tPhoneNo),
                  prefixIcon: Icon(
                    Icons.numbers,
                    color: tSecondaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: tFormHeight - 10,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (password) => password != null && password.length < 6
                    ? "password can't to be less than 6 letter "
                    : null,
                cursorColor: tSecondaryColor,
                keyboardType: TextInputType.name,
                obscureText: true,
                controller: controller.password,
                decoration: InputDecoration(
                  label: const Text(tPassWord),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock_outline_rounded,
                    color: tSecondaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: tFormHeight - 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        SignUpController.instance.registerUser(
                            controller.email.text.trim().toLowerCase(),
                            controller.password.text.trim().toLowerCase());
                        /*final user = UserModel(
                          email: controller.email.text.trim(),
                          fullName: controller.fullName.text.trim(),
                          phoneNo: controller.phoneNo.text.trim(),
                        );
                        SignUpController.instance.createUser(user);*/
                      }
                    },
                    child: Text(tSignup.toUpperCase())),
              )
            ],
          )),
    );
  }
}

//* Footer

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
                // ignore: prefer_const_constructors
                icon: Image(
                  image: const AssetImage(tGoogleLogoImage),
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
