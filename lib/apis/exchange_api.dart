import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ExchangeApi extends GetxController {
  Future<Map<String, dynamic>> fetchData(String base) async {
    var url = Uri.parse(
        'https://v6.exchangerate-api.com/v6/1c9a2e7044abfd194c8ecc3c/latest/$base');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      return responseData;
    } else {
      // Error response
      return // Error response
          throw Exception('Failed to load data');
      // SnackBar(
      //   content: Text(
      //     response.body,
      //     style: const TextStyle(
      //         color: Colors.white,
      //         fontFamily: "Montserrat",
      //         fontWeight: FontWeight.bold),
      //   ),
      //   backgroundColor: Get.isDarkMode
      //       ? ColorConstant.primaryColorDark
      //       : ColorConstant.primaryColorLight,
      //   padding: const EdgeInsets.all(8.0),
      // );
    }
  }
}
