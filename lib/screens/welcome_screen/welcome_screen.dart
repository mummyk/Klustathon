import 'package:app/screens/auth_screen/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../constants/image_text.dart';
import '../../constants/size.dart';
import '../../constants/text.dart';
import '../auth_screen/sign_up_screen.dart';
import 'controller/animation_controller.dart';
import 'controller/fade_in_animation.dart';
import 'models/animation_widget_model.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.animationIn();
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1200,
            animate: TAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftAfter: 0,
              leftBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
              topAfter: 0,
              topBefore: 0,
            ),
            child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Lottie.asset(tWelcomeImage, height: height * 0.6),
                  Column(
                    children: [
                      Text(tWelcomeTitle,
                          style: Theme.of(context).textTheme.headlineSmall),
                      Text(tWelcomeSubTitle,
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Get.to(const SignInScreen()),
                          child: Text(tSignIn.toUpperCase()),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => Get.to(const SignUpScreen()),
                          child: Text(tSignup.toUpperCase()),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
