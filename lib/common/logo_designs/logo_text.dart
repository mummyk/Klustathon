import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'PayForte',
      style: TextStyle(
        color: Get.isDarkMode
            ? ColorConstant.primaryColorDark
            : ColorConstant.primaryColorLight,
        fontSize: 36,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
        height: 0,
      ),
    );
  }
}
