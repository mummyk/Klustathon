import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/size.dart';
import '../../../constants/text.dart';
import '../widgets/forget_password_buttom_sheet.dart';
import 'forget_password_mail.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tForgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineLarge),
            Text(tForgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 30.0),
            ForgetPasswordBtnWidget(
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
              },
              title: tEmail,
              subTitle: tResetViaEMail,
              btnIcon: Icons.mail_outline_rounded,
            ),
            const SizedBox(height: 20.0),
            /*  ForgetPasswordBtnWidget(
              onTap: () {},
              title: tPhoneNo,
              subTitle: tResetViaPhone,
              btnIcon: Icons.mobile_friendly_rounded,
            ),*/
          ],
        ),
      ),
    );
  }
}
