import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';

class LogoRotation extends StatefulWidget {
  const LogoRotation({super.key});

  @override
  State<LogoRotation> createState() => _LogoRotationState();
}

class _LogoRotationState extends State<LogoRotation>
    with SingleTickerProviderStateMixin {
  late AnimationController _rotationController;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    );
    _rotationAnimation =
        Tween<double>(begin: 0, end: 2 * 3.141592653589793).animate(
      CurvedAnimation(
        parent: _rotationController,
        curve: Curves.linear,
      ),
    );

    // Start rotating immediately on page load
    _rotationController.repeat();
    // Delay navigation after 5 seconds
    // Future.delayed(const Duration(seconds: 5), () {
    //   // Navigate to another screen
    //
    //   Get.to(const OnBoardingScreen());
    // });
  }

  static const double containerSize = 120;

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
        turns: _rotationAnimation,
        child: Container(
          width: containerSize,
          height: containerSize,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Get.isDarkMode ? Colors.black : Colors.white,
          ),
          child: Stack(
            children: [
              Positioned(
                left: containerSize / 3.7,
                top: containerSize / 3,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Get.isDarkMode
                        ? ColorConstant.primaryColorDark
                        : ColorConstant.primaryColorLight,
                    shape: const OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: containerSize / 7,
                top: containerSize / 1.5,
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: ShapeDecoration(
                    color: Get.isDarkMode
                        ? ColorConstant.secondaryDark
                        : ColorConstant.secondaryLight,
                    shape: const OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: containerSize / 3.2,
                top: containerSize / 10,
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: ShapeDecoration(
                    color: Get.isDarkMode
                        ? ColorConstant.accentColorDark
                        : ColorConstant.accentColorLight,
                    shape: const OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: containerSize / 1.42,
                top: containerSize / 2,
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: ShapeDecoration(
                    color: Get.isDarkMode
                        ? ColorConstant.accentSecondaryColorDark
                        : ColorConstant.accentSecondaryColorLight,
                    shape: const OvalBorder(),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }
}
