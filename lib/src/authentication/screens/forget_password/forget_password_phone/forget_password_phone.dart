import 'package:my_medics/src/common_widgets/form/form_header_widget.dart';
import 'package:my_medics/src/constants/colors.dart';
import 'package:my_medics/src/constants/image_strings.dart';
import 'package:my_medics/src/constants/sizes.dart';
import 'package:my_medics/src/constants/text_strings.dart';
import 'package:my_medics/src/authentication/controllers/forget_password_phon_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordPhonController());
    final formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const SizedBox(height: tDefaultSize * 4),
                FormHeaderWidget(
                  image: tForgetPasswordImage,
                  title: tForgetPassword.toUpperCase(),
                  subTitle: tForgetPasswordSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: tFormHeight),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller.phoneNo,
                        cursorColor: tSecondaryColor,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                            label: Text(tPhoneNo),
                            hintText: tPhoneNo,
                            prefixIcon: Icon(Icons.phone)),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () async {
                                ForgetPasswordPhonController.instance
                                    .phoneAuthentication(
                                        controller.phoneNo.text.trim());
                              },
                              child: const Text(tNext))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
