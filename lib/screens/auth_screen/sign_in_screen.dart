import 'package:app/common/logo_designs/logo_text.dart';
import 'package:app/constants/text.dart';
import 'package:app/screens/auth_screen/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../constants/size.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static const double containerSize = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
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
                    ),
                    LogoText()
                  ],
                ),
                const Text(
                  tSignIn,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SignInForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
