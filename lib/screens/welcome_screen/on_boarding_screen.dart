import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'controller/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final obController = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            enableSideReveal: true,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangedCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            waveType: WaveType.liquidReveal,
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              onPressed: () => obController.skip(),
              child: const Text(
                "Skip",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 15),
              ),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                count: 4,
                activeIndex: obController.currentPage.value,
                effect: const JumpingDotEffect(
                  verticalOffset: 15.0,
                  activeDotColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
