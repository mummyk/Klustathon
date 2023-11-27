import 'package:app/screens/auth_screen/controllers/forget_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/image_text.dart';
import '../../../constants/size.dart';
import '../../../constants/text.dart';
import '../widgets/form_header_widget.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: tDefaultSize * 4),
                FormHeaderWidget(
                  image: tForgetPasswordImage,
                  title: tForgetPassword.toUpperCase(),
                  subTitle: tForgetPasswordSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 50.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: tFormHeight),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller.email,
                        decoration: const InputDecoration(
                            label: Text(tEmail),
                            hintText: tEmail,
                            prefixIcon: Icon(Icons.mail_outline_rounded)),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                // ForgetPasswordController.instance
                                //     .resetUserPassword(
                                //   controller.email.text.trim(),
                                // );
                              },
                              child: const Text(tNext))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
