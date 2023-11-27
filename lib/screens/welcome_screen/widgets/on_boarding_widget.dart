import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../constants/size.dart';
import '../models/on_boarding_model.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.model,
  });

  // ignore: non_constant_identifier_names
  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lottie.asset(model.image, height: size.height * 0.5),
          Column(
            children: [
              Text(
                model.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize,
                  fontWeight:
                      Theme.of(context).textTheme.headlineSmall?.fontWeight,
                ),
              ),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Text(
            model.counterText,
            style: TextStyle(
              color: Colors.white,
              fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize,
              fontWeight: Theme.of(context).textTheme.headlineSmall?.fontWeight,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
