import 'package:app/apis/exchange_api.dart';
import 'package:app/constants/colors.dart';
import 'package:app/screens/exchange/transferScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/country/countries.dart';

class ExchangeScreen extends StatefulWidget {
  ExchangeScreen({super.key});
  final exchangeApi = Get.put(ExchangeApi());
  final countryController = Get.put(CountyController());

  @override
  _ExchangeScreenState createState() => _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen> {
  late Map<String, dynamic> responseData;
  late String baseCode;
  late Map<String, dynamic> conversionRates;

  List<String> filteredCurrencies = [];

  @override
  void initState() {
    super.initState();
    // Initialize data when the widget is first created
    fetchData();
  }

  String base = "NGN";

  Future<void> fetchData() async {
    try {
      // Fetch data from the API
      Map<String, dynamic> data = await widget.exchangeApi.fetchData(base);
      setState(() {
        responseData = data;
        baseCode = responseData["base_code"];
        conversionRates = responseData["conversion_rates"];
        filteredCurrencies = conversionRates.keys.toList();
      });
    } catch (error) {
      print('Error fetching data: $error');
      // Handle error, show a message, etc.
    }
  }

  void filterCurrencies(String query) {
    setState(() {
      // Filter currencies based on the search query
      filteredCurrencies = conversionRates.keys
          .where(
            (currency) => currency.toLowerCase().contains(
                  widget.countryController
                      .getCurrencyByCountry(query)
                      .toLowerCase(),
                ),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (query) {
                filterCurrencies(query);
              },
              decoration: InputDecoration(
                labelText: 'Search by County full name',
                hintText: 'Enter currency code',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredCurrencies.length,
              itemBuilder: (context, index) {
                String currency = filteredCurrencies[index];
                var rate = conversionRates[currency].toDouble();

                return ListTile(
                  title: Text(
                    '$baseCode to $currency',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                    ),
                  ),
                  subtitle: Text(
                    'Rate: $rate',
                    style: const TextStyle(
                      fontFamily: "Montserrat",
                    ),
                  ),
                  trailing: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      backgroundColor: Get.isDarkMode
                          ? ColorConstant.primaryColorDark
                          : ColorConstant.primaryColorLight,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      minimumSize: const Size(150, 5),
                    ),
                    onPressed: () {
                      Get.to(
                        TransferScreen(fxrate: rate, fxcurrency: currency),
                      );
                    },
                    child: const Text(
                      "Transfer",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:app/apis/exchange_api.dart';
// import 'package:app/common/logo_designs/logo_rotation.dart';
// import 'package:app/constants/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ExchangeScreen extends StatelessWidget {
//   ExchangeScreen({super.key});
//   final exchangeApi = Get.put(ExchangeApi());
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: FutureBuilder<Map<String, dynamic>>(
//         future: exchangeApi.fetchData(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             // While data is being fetched, show a loading indicator
//             return const LogoRotation();
//           } else if (snapshot.hasError) {
//             // If an error occurs during data fetching, display an error message
//             return Text('Error: ${snapshot.error}');
//           } else if (snapshot.hasData) {
//             // If data is successfully fetched, display the values
//             Map<String, dynamic> responseData = snapshot.data!;
//             String baseCode = responseData["base_code"];
//             Map<String, dynamic> conversionRates =
//                 responseData["conversion_rates"];
//
//             return ListView.builder(
//               itemCount: conversionRates.length,
//               itemBuilder: (context, index) {
//                 String currency = conversionRates.keys.elementAt(index);
//                 var rate = conversionRates[currency].toDouble();
//
//                 return ListTile(
//                   title: Text(
//                     '$baseCode to $currency',
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontFamily: "Montserrat",
//                     ),
//                   ),
//                   subtitle: Text(
//                     'Rate: $rate',
//                     style: const TextStyle(
//                       fontFamily: "Montserrat",
//                     ),
//                   ),
//                   trailing: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.all(10),
//                       backgroundColor: Get.isDarkMode
//                           ? ColorConstant.primaryColorDark
//                           : ColorConstant
//                               .primaryColorLight, // Change the background color
//                       shape: RoundedRectangleBorder(
//                         borderRadius:
//                             BorderRadius.circular(15.0), // Curve the border
//                       ),
//                       minimumSize: const Size(150, 5),
//                     ),
//                     onPressed: () {},
//                     child: const Text(
//                       "Transfer",
//                       style: TextStyle(
//                         fontFamily: "Montserrat",
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             );
//             //   Column(
//             //   mainAxisAlignment: MainAxisAlignment.center,
//             //   children: [
//             //     Text('Base Code: $baseCode'),
//             //     for (var entry in conversionRates.entries)
//             //       Text('Currency: ${entry.key}, Rate: ${entry.value}'),
//             //     // Add more Text widgets for other values as needed
//             //   ],
//             // );
//           } else {
//             // If no data is available, display a message
//             return const Text('No data available');
//           }
//         },
//       ),
//     );
//   }
// }
