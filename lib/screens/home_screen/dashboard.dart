import 'package:app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../auth_screen/controllers/hide_controller.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});
  final hideController = Get.put(HideController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Icon icon = const Icon(
      LineIcons.eye,
      color: Colors.white,
    );
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width,
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Get.isDarkMode
                      ? ColorConstant.primaryColorDark
                      : ColorConstant.primaryColorLight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Available Balance',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            height: 0,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text(
                                'Transaction History',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  height: 0,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 12,
                                weight: 10,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 15.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                hideController.hide.value ? '2000' : '*****',
                                style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.fontSize,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    height: 0,
                                    color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () {
                                  hideController.hide.toggle();
                                },
                                icon: hideController.hide.value
                                    ? icon
                                    : const Icon(
                                        LineIcons.eyeSlash,
                                        color: Colors.white,
                                      ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(10),
                              backgroundColor:
                                  Colors.white, // Change the background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0), // Curve the border
                              ),
                              minimumSize: const Size(150, 5),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Get.isDarkMode
                                      ? ColorConstant.primaryColorDark
                                      : ColorConstant.primaryColorLight,
                                  size: 15,
                                ),
                                Text(
                                  "Add Money",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                    color: Get.isDarkMode
                                        ? ColorConstant.primaryColorDark
                                        : ColorConstant.primaryColorLight,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
                width: size.width,
                margin: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Get.isDarkMode ? Colors.black : Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(LineIcons.user,
                                  size: 30,
                                  color: Get.isDarkMode
                                      ? ColorConstant.primaryColorDark
                                      : ColorConstant.primaryColorLight)),
                          const Text(
                            "To PayForte",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(LineIcons.piggyBank,
                                  size: 30,
                                  color: Get.isDarkMode
                                      ? ColorConstant.primaryColorDark
                                      : ColorConstant.primaryColorLight)),
                          const Text(
                            "Withdraw",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            const SizedBox(height: 20),
            Container(
              width: size.width,
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Get.isDarkMode ? Colors.black : Colors.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.phonelink_ring,
                                    size: 30,
                                    color: Get.isDarkMode
                                        ? ColorConstant.primaryColorDark
                                        : ColorConstant.primaryColorLight)),
                            const Text(
                              "Airtime",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                    Icons
                                        .signal_cellular_connected_no_internet_4_bar,
                                    size: 30,
                                    color: Get.isDarkMode
                                        ? ColorConstant.primaryColorDark
                                        : ColorConstant.primaryColorLight)),
                            const Text(
                              "Data",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(LineIcons.gamepad,
                                    size: 30,
                                    color: Get.isDarkMode
                                        ? ColorConstant.primaryColorDark
                                        : ColorConstant.primaryColorLight)),
                            const Text(
                              "Betting",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.tv,
                                    size: 30,
                                    color: Get.isDarkMode
                                        ? ColorConstant.primaryColorDark
                                        : ColorConstant.primaryColorLight)),
                            const Text(
                              "Tv",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.savings,
                                    size: 30,
                                    color: Get.isDarkMode
                                        ? ColorConstant.primaryColorDark
                                        : ColorConstant.primaryColorLight)),
                            const Text(
                              "PF wealth",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(LineIcons.userFriends,
                                    size: 30,
                                    color: Get.isDarkMode
                                        ? ColorConstant.primaryColorDark
                                        : ColorConstant.primaryColorLight)),
                            const Text(
                              "Refer & Earn",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(LineIcons.donate,
                                    size: 30,
                                    color: Get.isDarkMode
                                        ? ColorConstant.primaryColorDark
                                        : ColorConstant.primaryColorLight)),
                            const Text(
                              "Charity",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(LineIcons.bitcoin,
                                  size: 30,
                                  color: Get.isDarkMode
                                      ? ColorConstant.primaryColorDark
                                      : ColorConstant.primaryColorLight),
                            ),
                            const Text(
                              "Crypto",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0), // Curve the border
                              ),
                              minimumSize: const Size(20, 5),
                              maximumSize: const Size(150, 50)),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "More",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  height: 0,
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
