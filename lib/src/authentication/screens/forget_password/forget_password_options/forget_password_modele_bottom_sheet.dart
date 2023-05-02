import 'package:my_medics/src/constants/sizes.dart';
import 'package:my_medics/src/constants/text_strings.dart';
import 'package:my_medics/src/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:my_medics/src/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:my_medics/src/authentication/screens/forget_password/forget_password_phone/forget_password_phone.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(tDefaultSize - 20)),
        builder: (context) => Container(
              padding: const EdgeInsets.all(tDefaultSize - 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tForgetPassword,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Text(tForgetPasswordSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(
                    height: 30,
                  ),
                  ForgetPasswordBtnWidget(
                    btnIcon: Icons.mail_outline_rounded,
                    onTap: () {
                      Navigator.pop(context);
                      Get.to(() => ForgetPasswordMailScreen());
                    },
                    subtitle: tResetViaEMail,
                    title: tEmail,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ForgetPasswordBtnWidget(
                    btnIcon: Icons.mobile_friendly_rounded,
                    onTap: () {
                      Navigator.pop(context);
                      Get.to(() => const ForgetPasswordPhoneScreen());
                    },
                    subtitle: tResetViaPhone,
                    title: tPhoneNo,
                  )
                ],
              ),
            ));
  }
}
