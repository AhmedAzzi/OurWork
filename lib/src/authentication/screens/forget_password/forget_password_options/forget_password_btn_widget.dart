import 'package:MyMedice/src/constants/colors.dart';
import 'package:MyMedice/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    super.key,
    required this.btnIcon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData btnIcon;
  final String title, subtitle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(tDefaultSize - 20),
            color: isDarkMode ? Colors.grey[400] : Colors.blue[400]),
        child: Row(
          children: [
            Icon(
              btnIcon,
              size: tDefaultSize * 2,
              color: isDarkMode ? tWhiteColor : tDarkColor,
            ),
            const SizedBox(
              width: tDefaultSize - 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? tWhiteColor : tDarkColor,
                  ),
                ),
                Text(subtitle, style: Theme.of(context).textTheme.bodyText2),
              ],
            )
          ],
        ),
      ),
    );
  }
}
