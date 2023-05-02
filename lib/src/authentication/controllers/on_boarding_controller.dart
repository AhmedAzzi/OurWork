import 'package:MyMedice/src/constants/colors.dart';
import 'package:MyMedice/src/authentication/screens/Welcome/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:MyMedice/src/constants/image_strings.dart';
import 'package:MyMedice/src/constants/text_strings.dart';
import 'package:MyMedice/src/authentication/models/model_on_boarding.dart';
import 'package:MyMedice/src/authentication/screens/on_boarding/on_boarding_page_wiget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
        model: OnBoardingModel(
      image: tOnBordingImage1,
      title: tOnBordingTitle1,
      subTitle: tOnBordingSubTitle1,
      counterText: tOnBordingCounter1,
      bgColor: tOnBordingPage1Color,
    )),
    OnBoardingPageWidget(
        model: OnBoardingModel(
      image: tOnBordingImage2,
      title: tOnBordingTitle2,
      subTitle: tOnBordingSubTitle2,
      counterText: tOnBordingCounter2,
      bgColor: tOnBordingPage2Color,
    )),
    OnBoardingPageWidget(
        model: OnBoardingModel(
      image: tOnBordingImage3,
      title: tOnBordingTitle3,
      subTitle: tOnBordingSubTitle3,
      counterText: tOnBordingCounter3,
      bgColor: tOnBordingPage3Color,
    )),
  ];

  onPageChangedCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
  skip() => controller.jumpToPage(page: 2);
  NextSlide() {
    int nextpage = controller.currentPage + 1;
    controller.animateToPage(page: nextpage);
  }

  indic(int page) {
    page = controller.currentPage;
    controller.animateToPage(page: page);
  }

  done() => Get.offAll(() => const WelcomeScreen());
}
