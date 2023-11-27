import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:line_icons/line_icons.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';
import '../../../constants/text.dart';
import '../controllers/hide_controller.dart';
import '../controllers/sign_up_controller.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final AuthenticationRepository authController = Get.find();
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();
    //Hide password
    Icon icon = const Icon(LineIcons.eye);
    final hideController = Get.put(HideController());

    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                label: const Text(tEmail),
                labelStyle: TextStyle(
                  color: Get.isDarkMode
                      ? ColorConstant.primaryColorDark
                      : ColorConstant.primaryColorLight,
                ),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Get.isDarkMode
                      ? ColorConstant.primaryColorDark
                      : ColorConstant.primaryColorLight,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.fullName,
              decoration: InputDecoration(
                label: const Text(tFullName),
                labelStyle: TextStyle(
                  color: Get.isDarkMode
                      ? ColorConstant.primaryColorDark
                      : ColorConstant.primaryColorLight,
                ),
                prefixIcon: Icon(
                  Icons.person,
                  color: Get.isDarkMode
                      ? ColorConstant.primaryColorDark
                      : ColorConstant.primaryColorLight,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your Full Name';
                }
                return null;
              },
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.age,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: const Text("Age"),
                labelStyle: TextStyle(
                  color: Get.isDarkMode
                      ? ColorConstant.primaryColorDark
                      : ColorConstant.primaryColorLight,
                ),
                prefixIcon: Icon(
                  Icons.card_membership,
                  color: Get.isDarkMode
                      ? ColorConstant.primaryColorDark
                      : ColorConstant.primaryColorLight,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your Age';
                }
                return null;
              },
            ),
            const SizedBox(height: tFormHeight - 20),
            Obx(
              () => TextFormField(
                obscureText: hideController.hide.value,
                controller: controller.password,
                decoration: InputDecoration(
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
                          ),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Password';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 10),
            Obx(
              () => TextFormField(
                obscureText: hideController.hide.value,
                controller: controller.confirmPasswordController,
                decoration: InputDecoration(
                  label: const Text(tConfirmPassword),
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
                          ),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Confirm your Password';
                  } else if (value != controller.password.text.trim()) {
                    return "Password Does not match";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 10),
            IntlPhoneField(
              decoration: InputDecoration(
                label: const Text(tPhoneNo),
                labelStyle: TextStyle(
                  color: Get.isDarkMode
                      ? ColorConstant.primaryColorDark
                      : ColorConstant.primaryColorLight,
                ),
                prefixIcon: Icon(
                  Icons.phone,
                  color: Get.isDarkMode
                      ? ColorConstant.primaryColorDark
                      : ColorConstant.primaryColorLight,
                ),
              ),
              initialCountryCode: "NG",
              onChanged: (phone) {
                controller.phoneNumber.value = phone.completeNumber;
                controller.countryCode.value = phone.countryISOCode;
              },
            ),
            const SizedBox(height: 10),
            //Obx(() {
            // if (authController.errorMessage != null) {
            //   return Text(
            //     authController.errorMessage,
            //     style: const TextStyle(
            //       color: Colors.red,
            //     ),
            //   );
            // }
            //  return const SizedBox.shrink();
            //}),
            const SizedBox(height: tFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState?.save();
                    // for email and password
                    /*SignUpController.instance.registerUser(
                        controller.email.text.trim(),
                        controller.password.text.trim());*/

                    // for Phone OTP
                    /*SignUpController.instance
                        .phoneAuthentication(controller.phoneNo.text.trim());
                    Get.to(() => const OTPScreen());*/

                    /*
                      ==========
                      Todo: Step - 3 [Get User and pass it to Controller]
                      ==========
                    */
                    //     final user = UserModel(
                    //       id: authController.userUid,
                    //       email: controller.email.text.trim(),
                    //       age: controller.age.text.trim(),
                    //       fullName: controller.fullName.text.trim(),
                    //       phoneNo: controller.phoneNumber.value,
                    //       countryCode: controller.countryCode.value,
                    //       isAdmin: false,
                    //       plans: 0,
                    //       image: authController.photoURL == null
                    //           ? ""
                    //           : authController.photoURL.toString(),
                    //       isOnline: false,
                    //       pushToken: '',
                    //       lastActive: '',
                    //     );
                    //     //
                    //
                    //     // Using Email and password Sign Up
                    //     SignUpController.instance.registerUser(
                    //       controller.email.text.trim(),
                    //       controller.password.text.trim(),
                    //       user,
                    //     );
                    //
                    //     //SignUpController.instance.createUser(user);
                    //     //Get.to(() => const Dashboard());
                  }
                },
                child: Text(tSignup.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
