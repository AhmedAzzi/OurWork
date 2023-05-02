import 'package:my_medics/src/constants/sizes.dart';
import 'package:my_medics/src/authentication/models/model_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lottie.asset(model.image, height: size.height * 0.45),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 80.0,
          )
        ],
      ),
    );
  }
}

// 