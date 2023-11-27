import 'package:app/screens/welcome_screen/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_text.dart';
import '../../../constants/text.dart';
import '../models/on_boarding_model.dart';
import '../widgets/on_boarding_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPage(
      model: OnBoardingModel(
        image: tOnBoardingImage1,
        title: tOnBoardingTitle1,
        subTitle: tOnBoardingSubTitle1,
        counterText: tOnBoardingCounter1,
        bgColor: Get.isDarkMode
            ? ColorConstant.primaryColorDark
            : ColorConstant.primaryColorLight,
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        image: tOnBoardingImage2,
        title: tOnBoardingTitle2,
        subTitle: tOnBoardingSubTitle2,
        counterText: tOnBoardingCounter2,
        bgColor: Get.isDarkMode
            ? ColorConstant.secondaryDark
            : ColorConstant.secondaryLight,
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        image: tOnBoardingImage3,
        title: tOnBoardingTitle3,
        subTitle: tOnBoardingSubTitle3,
        counterText: tOnBoardingCounter3,
        bgColor: Get.isDarkMode
            ? ColorConstant.accentColorDark
            : ColorConstant.accentColorLight,
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        image: tOnBoardingImage4,
        title: tOnBoardingTitle4,
        subTitle: tOnBoardingSubTitle4,
        counterText: tOnBoardingCounter4,
        bgColor: Get.isDarkMode
            ? ColorConstant.accentSecondaryColorDark
            : ColorConstant.accentSecondaryColorLight,
      ),
    ),
  ];

  skip() => Get.to(const WelcomeScreen());

  /* skip() => controller.jumpToPage(page: 2);*/
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangedCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
