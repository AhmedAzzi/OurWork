import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      this.imageColor,
      this.imageHeight = 2.0,
      this.heightBetween,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.textAlign})
      : super(key: key);

  final String image, title, subTitle;
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Lottie.asset(image, height: size.height * 0.2),
        Text(title, style: Theme.of(context).textTheme.headline1),
        Text(subTitle,
            textAlign: textAlign, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
