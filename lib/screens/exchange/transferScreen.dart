import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';

class TransferScreen extends StatelessWidget {
  final double fxrate;
  final String fxcurrency;
  const TransferScreen(
      {super.key, required this.fxrate, required this.fxcurrency});

  @override
  Widget build(BuildContext context) {
    TextEditingController _textFieldController = TextEditingController();
    final size = MediaQuery.of(context).size;

    var fxcurrencyFinal = fxcurrency.obs;
    var amountResult = ''.obs;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Obx(
          () => Text('Transfer to ${fxcurrencyFinal.value}',
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  color: Get.isDarkMode ? Colors.white : Colors.black)),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name or phone.No',
                      hintText: 'Enter Wallet',
                      prefixIcon: Icon(
                        Icons.account_balance_wallet,
                        color: Get.isDarkMode
                            ? ColorConstant.primaryColorDark
                            : ColorConstant.primaryColorLight,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Text("Enter full name or phone no e.g +234***")
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _textFieldController,
                onChanged: (query) {
                  // Update the amountResult with the result of multiplying the entered value by fxrate
                  amountResult.value =
                      (double.parse(query) * fxrate).toString();
                },
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    fontFamily: "Montserrat",
                  ),
                  hintStyle: TextStyle(
                    fontFamily: "Montserrat",
                  ),
                  labelText: 'Enter amount',
                  hintText: 'Enter Wallet',
                  prefixIcon: Icon(
                    Icons.account_balance_wallet,
                    color: Get.isDarkMode
                        ? ColorConstant.primaryColorDark
                        : ColorConstant.primaryColorLight,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Obx(
              () => Text(
                "Total Amount:  ${amountResult.value} ", // Display the calculated result
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat",
                ),
              ),
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Get.isDarkMode
                      ? ColorConstant.primaryColorDark
                      : ColorConstant.primaryColorLight),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Account Name",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                          ),
                        ),
                        Text(
                          " Name",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Account Name",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                          ),
                        ),
                        Text(
                          " Name",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Account Name",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                          ),
                        ),
                        Text(
                          " Name",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
