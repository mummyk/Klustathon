import 'package:app/constants/colors.dart';
import 'package:app/screens/exchange/exchange_screen.dart';
import 'package:app/screens/home_screen/dashboard.dart';
import 'package:app/screens/payment/payment_screen.dart';
import 'package:app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth_screen/controllers/Buttom_nav_controller.dart';

class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({super.key});

  final MyHomeController controller = Get.put(MyHomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Obx(() => _buildAppBarTitle(controller.selectedIndex.value)),
        actions: [
          Obx(() {
            List<Widget> appBarActions =
                _buildAppBarActions(controller.selectedIndex.value);

            return Row(
              children: appBarActions,
            );
          }),
        ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Obx(() => _buildScreen(controller.selectedIndex.value)),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeTabIndex,
          backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
          selectedItemColor: Get.isDarkMode
              ? ColorConstant.primaryColorDark
              : ColorConstant.primaryColorLight,
          unselectedItemColor: Get.isDarkMode ? Colors.white : Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.currency_exchange),
              label: 'Exchange',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payments),
              label: 'Payments',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScreen(int index) {
    switch (index) {
      case 0:
        return DashboardScreen();
      case 1:
        return ExchangeScreen();
      case 2:
        return const PaymentScreen();
      default:
        return const ProfileScreen(); // Default to HomeContent
    }
  }

  Widget _buildAppBarTitle(int selectedIndex) {
    TextStyle textStyle = TextStyle(
        fontFamily: "Montserrat",
        fontWeight: FontWeight.bold,
        color: Get.isDarkMode ? Colors.white : Colors.black);

    switch (selectedIndex) {
      case 0:
        return Text('Hi User', style: textStyle);
      case 1:
        return Text("Exchange Rate", style: textStyle);
      case 2:
        return Text("Payments", style: textStyle);
      case 3:
        return Text("Profile", style: textStyle);
      default:
        return Text("User");
    }
  }

  List<Widget> _buildAppBarActions(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        // Customize actions for Home tab
        return [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.headset_mic,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.qr_code_2,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ];
      case 1:
        // Customize actions for Search tab
        return [];
      case 2:
        // Customize actions for Profile tab
        return [];
      case 3:
        return [];
      default:
        return [];
    }
  }
}
