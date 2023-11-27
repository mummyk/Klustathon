import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //// Call the user creation controller
  //final userRepo = Get.put(UserRepository());

  //TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final fullName = TextEditingController();
  final age = TextEditingController();
  final phoneNumber = "".obs;
  final countryCode = "".obs;

  //Call this Function from Design & it will do the rest
  // Register user/Authenticate user with email and password
  // void registerUser(String email, String password, UserModel user) async {
  //   if (passwordConfirmed()) {
  //     await AuthenticationRepository.instance
  //         .createUserWithEmailAndPassword(email, password);
  //     ////Now add the user details to the Database
  //     userRepo.createUser(user);
  //     Get.to(EmailVerificationNote());
  //   }
  // }
  //
  // // Authenticate user with phone number
  // void phoneAuthentication(String phoneNo) async{
  //   await AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  // }

  bool passwordConfirmed() {
    if (password.text.trim() == confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }
}
