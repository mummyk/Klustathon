import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});
  static const double containerSize = 120;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
