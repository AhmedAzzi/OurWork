import 'package:my_medics/src/authentication/controllers/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final obController = OnBoardingController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            enableLoop: false,
            pages: obController.pages,
            liquidController: obController.controller,
            onPageChangeCallback: (activePageIndex) {
              obController.onPageChangedCallback(activePageIndex);
              setState(() {
                isLastPage = activePageIndex == 2;
              });
            },
          ),
          Positioned(
            bottom: 25,
            right: 20,
            // ignore: dead_code
            child: isLastPage
                ? TextButton(
                    onPressed: () async => obController.done(),
                    child: const Text("Done",
                        style: TextStyle(color: Colors.grey)),
                  )
                : TextButton(
                    onPressed: () => obController.nextSlide(),
                    child: const Text("Next",
                        style: TextStyle(color: Colors.grey)),
                  ),
          ),
          Obx(
            () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                duration: const Duration(milliseconds: 100),
                count: 3,
                onDotClicked: (index) {
                  setState(() {
                    obController.currentPage.value = index;
                    obController.indic(obController.currentPage.value);
                  });
                },
                activeIndex: obController.currentPage.value,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Color(0xff272727),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
