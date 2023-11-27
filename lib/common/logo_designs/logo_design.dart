import 'package:app/common/logo_designs/logo_rotation.dart';
import 'package:app/common/logo_designs/logo_text.dart';
import 'package:flutter/material.dart';

class LogoDesign extends StatelessWidget {
  const LogoDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LogoRotation(),
        LogoText(),
      ],
    );
  }
}
