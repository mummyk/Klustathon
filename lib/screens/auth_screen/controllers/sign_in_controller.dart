import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  /// TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();

  /// TextField Validation

  //Call this Function from Design & it will do the rest
  // Future<void> loginUser(String email, String password) async {
  //   await AuthenticationRepository.instance
  //       .loginWithEmailAndPassword(email, password);
  // }
}
