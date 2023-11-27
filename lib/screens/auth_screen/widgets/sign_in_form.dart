import 'package:app/screens/auth_screen/controllers/sign_in_controller.dart';
import 'package:app/screens/auth_screen/sign_up_screen.dart';
import 'package:app/screens/home_screen/common/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';
import '../../../constants/text.dart';
import '../controllers/hide_controller.dart';
import '../forget_password_screens/forget_password_buttom_sheet.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());
    //final AuthenticationRepository authController = Get.find();
    final _formKey = GlobalKey<FormState>();
    //Hide password
    Icon icon = Icon(
      LineIcons.eye,
      color: Get.isDarkMode
          ? ColorConstant.primaryColorDark
          : ColorConstant.primaryColorLight,
    );
    final hideController = Get.put(HideController());
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outline_outlined,
                  color: Get.isDarkMode
                      ? ColorConstant.primaryColorDark
                      : ColorConstant.primaryColorLight,
                ),
                labelText: tEmail,
                labelStyle: TextStyle(
                  color: Get.isDarkMode
                      ? ColorConstant.primaryColorDark
                      : ColorConstant.primaryColorLight,
                ),
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            Obx(
              () => TextFormField(
                obscureText: hideController.hide.value,
                controller: controller.password,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: const Text(tPassword),
                  labelStyle: TextStyle(
                    color: Get.isDarkMode
                        ? ColorConstant.primaryColorDark
                        : ColorConstant.primaryColorLight,
                  ),
                  prefixIcon: Icon(
                    Icons.fingerprint,
                    color: Get.isDarkMode
                        ? ColorConstant.primaryColorDark
                        : ColorConstant.primaryColorLight,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        hideController.hide.toggle();
                      },
                      icon: hideController.hide.value
                          ? icon
                          : Icon(
                              LineIcons.eyeSlash,
                              color: Get.isDarkMode
                                  ? ColorConstant.primaryColorDark
                                  : ColorConstant.primaryColorLight,
                            )),
                ),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            // Obx(() {
            //   if (authController.errorMessage != null) {
            //     return Text(
            //       authController.errorMessage,
            //       style: const TextStyle(
            //         color: Colors.red,
            //       ),
            //     );
            //   }
            //   return const SizedBox.shrink();
            // }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Get.to(const SignUpScreen());
                    },
                    child: const Text(tSignup)),
                TextButton(
                    onPressed: () {
                      ForgetPasswordScreen.buildShowModalBottomSheet(context);
                    },
                    child: const Text(tForgetPassword)),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.offAll(MyBottomNavigationBar());
                  // if (_formKey.currentState!.validate()) {
                  //   // login user
                  //   SignInController.instance.loginUser(
                  //       controller.email.text.trim(),
                  //       controller.password.text.trim());
                  // }
                },
                child: Text(tSignIn.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
